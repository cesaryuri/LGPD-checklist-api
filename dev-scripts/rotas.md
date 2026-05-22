# Rotas da API — LGPD Checklist IoT

Base URL: `http://localhost:8045`

Rotas protegidas exigem o header:
```
Authorization: Bearer <token>
```
O token é obtido no login.

---

## Auth / Usuários

### POST /users — Criar usuário
Não requer autenticação.

```json
POST /users
Body:
{
  "name": "Alice Silva",
  "office": "DPO",
  "email": "alice@example.com",
  "password": "Senha@123"
}

Resposta 200:
{
  "user": {
    "id": 1,
    "name": "Alice Silva",
    "office": "DPO",
    "email": "alice@example.com"
  }
}
```

---

### POST /login — Login
Não requer autenticação.

```json
POST /login
Body:
{
  "email": "alice@example.com",
  "password": "Senha@123"
}

Resposta 200:
{
  "user": { "id": 1, "name": "Alice Silva", ... },
  "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9..."
}
```

---

### GET /token — Verificar token
Requer autenticação.

```
GET /token
Authorization: Bearer <token>

Resposta 200:
{
  "user": { "id": 1, "name": "Alice Silva", ... },
  "token": "<token>"
}
```

---

### GET /users/:id — Buscar usuário por ID
Não requer autenticação.

```
GET /users/1

Resposta 200:
{
  "user": {
    "id": 1,
    "name": "Alice Silva",
    "office": "DPO",
    "email": "alice@example.com"
  }
}
```

---

### PUT /users/:id — Atualizar usuário
Requer autenticação. Só o próprio usuário pode atualizar.

```json
PUT /users/1
Authorization: Bearer <token>
Body:
{
  "name": "Alice Oliveira",
  "office": "Gerente de Privacidade"
}

Resposta 200: null
```

---

### DELETE /users/:id — Deletar usuário
Requer autenticação. Só o próprio usuário pode deletar.

```
DELETE /users/1
Authorization: Bearer <token>

Resposta 200: null
```

---

## Sistemas

### POST /systems — Criar sistema
Requer autenticação.

```json
POST /systems
Authorization: Bearer <token>
Body:
{
  "name": "Plataforma de Videomonitoramento",
  "description": "Serviço de nuvem para câmeras com IA",
  "userId": 1
}

Resposta 200:
{
  "system": {
    "id": 1,
    "name": "Plataforma de Videomonitoramento",
    "description": "Serviço de nuvem para câmeras com IA",
    "userId": 1
  }
}
```

---

### GET /systems/:id — Buscar sistema por ID
Não requer autenticação.

```
GET /systems/1

Resposta 200:
{
  "system": {
    "id": 1,
    "name": "Plataforma de Videomonitoramento",
    "description": "Serviço de nuvem para câmeras com IA",
    "userId": 1
  }
}
```

---

### GET /systemsByUserId/:userId — Listar sistemas do usuário
Requer autenticação. Só o próprio usuário pode listar.

```
GET /systemsByUserId/1
Authorization: Bearer <token>

Resposta 200:
{
  "systems": [
    { "id": 1, "name": "Plataforma de Videomonitoramento", ... }
  ]
}
```

---

### PUT /systems/:id — Atualizar sistema
Requer autenticação. Só o dono do sistema pode atualizar.

```json
PUT /systems/1
Authorization: Bearer <token>
Body:
{
  "name": "Plataforma de Videomonitoramento v2",
  "description": "Nova descrição do sistema"
}

Resposta 200: null
```

---

### DELETE /systems/:id — Deletar sistema
Requer autenticação. Só o dono do sistema pode deletar.

```
DELETE /systems/1
Authorization: Bearer <token>

Resposta 200: null
```

---

## Dispositivos

### GET /devices — Listar tipos de dispositivo
Não requer autenticação. Retorna os três tipos fixos.

```
GET /devices

Resposta 200:
{
  "devices": [
    { "id": 1, "name": "Sensor" },
    { "id": 2, "name": "Wearable" },
    { "id": 3, "name": "Implantavel" }
  ]
}
```

---

## Princípios

### GET /principles — Listar princípios
Não requer autenticação.

```
GET /principles

Resposta 200:
{
  "principles": [
    { "id": 1, "name": "Sobre transparência de Dados (T)" },
    { "id": 2, "name": "Sobre Consentimento do Titular (C)" },
    { "id": 3, "name": "Sobre os Direitos do Titular (D)" },
    { "id": 4, "name": "Sobre Segurança de Dados (S)" },
    { "id": 5, "name": "Sobre Responsabilidade do Controlador (R)" },
    { "id": 6, "name": "Acesso ao Dispositivo (A)" },
    { "id": 7, "name": "Segurança Física (SF)" }
  ]
}
```

---

## Items

### GET /items?deviceType= — Listar itens por tipo de dispositivo
Não requer autenticação.
Valores aceitos: `Sensor`, `Wearable`, `Implantavel`

```
GET /items?deviceType=Sensor

Resposta 200:
{
  "items": [
    {
      "id": 1,
      "code": "T-01",
      "itemDesc": "As finalidades de tratamento de dados foram definidas na organização?",
      "recommendations": "Crie um documento (Política de Privacidade)...",
      "deviceType": "Sensor",
      "principles": [
        { "id": 1, "name": "Sobre transparência de Dados (T)" }
      ]
    },
    ...
  ]
}
```

```
GET /items?deviceType=Wearable
GET /items?deviceType=Implantavel
```

---

## Checklists

### POST /checklists — Criar checklist
Requer autenticação.
O `userId` deve ser o mesmo do token.
Os `items` devem ser do mesmo `deviceType` informado.

```json
POST /checklists
Authorization: Bearer <token>
Body:
{
  "userId": 1,
  "systemId": 1,
  "deviceType": "Sensor",
  "items": [
    { "id": 1, "answer": "Sim", "severityDegree": null, "userComment": "Política documentada." },
    { "id": 2, "answer": "Não", "severityDegree": "Grave", "userComment": "Base legal não definida." },
    { "id": 3, "answer": "Sim", "severityDegree": null, "userComment": null }
  ]
}

Resposta 200:
{
  "checklist": {
    "id": 1,
    "userId": 1,
    "systemId": 1,
    "deviceType": "Sensor",
    "checklistItems": [...]
  }
}
```

---

### GET /checklists/:id — Buscar checklist por ID
Requer autenticação.

```
GET /checklists/1
Authorization: Bearer <token>

Resposta 200:
{
  "checklist": {
    "id": 1,
    "userId": 1,
    "systemId": 1,
    "deviceType": "Sensor",
    "checklistItems": [
      {
        "item": {
          "id": 1,
          "code": "T-01",
          "itemDesc": "...",
          "deviceType": "Sensor",
          "principles": [{ "id": 1, "name": "Sobre transparência de Dados (T)" }]
        },
        "answer": "Sim",
        "severityDegree": null,
        "userComment": "Política documentada."
      }
    ],
    "createdAt": "2026-05-17T00:00:00.000Z",
    "updatedAt": "2026-05-17T00:00:00.000Z"
  }
}
```

---

### GET /checklistsByUserId/:userId — Listar checklists do usuário
Requer autenticação. Só o próprio usuário pode listar.

```
GET /checklistsByUserId/1
Authorization: Bearer <token>

Resposta 200:
{
  "checklists": [
    {
      "id": 1,
      "userId": 1,
      "systemId": 1,
      "deviceType": "Sensor",
      "createdAt": "...",
      "updatedAt": "..."
    }
  ]
}
```

---

### GET /checklistsBySystemId/:systemId — Listar checklists de um sistema
Requer autenticação. Só o dono do sistema pode listar.

```
GET /checklistsBySystemId/1
Authorization: Bearer <token>

Resposta 200:
{
  "checklists": [
    {
      "id": 1,
      "userId": 1,
      "systemId": 1,
      "deviceType": "Sensor",
      "createdAt": "...",
      "updatedAt": "..."
    }
  ]
}
```

---

### PUT /checklists/:id — Atualizar checklist
Requer autenticação. Só o dono do checklist pode atualizar.

```json
PUT /checklists/1
Authorization: Bearer <token>
Body:
{
  "systemId": 1,
  "deviceType": "Sensor",
  "items": [
    { "id": 1, "answer": "Sim", "severityDegree": null, "userComment": "Atualizado." },
    { "id": 5, "answer": "Não", "severityDegree": "Leve", "userComment": "Em progresso." }
  ]
}

Resposta 200: null
```

---

### DELETE /checklists/:id — Deletar checklist
Requer autenticação. Só o dono do checklist pode deletar.

```
DELETE /checklists/1
Authorization: Bearer <token>

Resposta 200: null
```

---

## Fluxo completo de teste sugerido

1. `POST /users` — criar usuário
2. `POST /login` — logar e copiar o token
3. `POST /systems` — criar um sistema
4. `GET /devices` — ver os tipos disponíveis
5. `GET /items?deviceType=Sensor` — ver os itens do tipo escolhido
6. `POST /checklists` — criar checklist com os ids dos itens retornados
7. `GET /checklists/:id` — verificar o checklist criado
8. `PUT /checklists/:id` — atualizar respostas
9. `DELETE /checklists/:id` — deletar se necessário