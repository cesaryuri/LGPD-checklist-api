-- ============================================================
-- 0. Limpar todos os dados existentes (Ordem de dependência)
-- ============================================================
DELETE FROM "_item_principles";
DELETE FROM items;
DELETE FROM principles;

-- ============================================================
-- 1. Inserir princípios novos
-- ============================================================
INSERT INTO principles (name) VALUES
  ('Adequação'),
  ('Segurança'),
  ('Prevenção'),
  ('Responsabilização'),
  ('Necessidade');

-- ============================================================
-- 2. Inserir todos os itens em Lote (Batch Insert)
-- ============================================================
INSERT INTO items (code, item_desc, recommendations, device_type) VALUES
  -- Pergunta 1 (Sensor, Wearable, Implantavel)
  ('01-S', 'O dispositivo utiliza mecanismos criptográficos leves e compatíveis com suas limitações de energia e processamento?', 'Emprego de mecanismos criptográficos leves com nível de segurança adequado, considerando restrições de processamento, memória e energia.', 'Sensor'),
  ('01-W', 'O dispositivo utiliza mecanismos criptográficos leves e compatíveis com suas limitações de energia e processamento?', 'Emprego de mecanismos criptográficos leves com nível de segurança adequado, considerando restrições de processamento, memória e energia.', 'Wearable'),
  ('01-I', 'O dispositivo utiliza mecanismos criptográficos leves e compatíveis com suas limitações de energia e processamento?', 'Emprego de mecanismos criptográficos leves com nível de segurança adequado, considerando restrições de processamento, memória e energia.', 'Implantavel'),
  
  -- Pergunta 2 (Sensor, Wearable, Implantavel)
  ('02-S', 'Os dados de saúde transmitidos são protegidos por criptografia?', 'Aplicar mecanismos de criptografia e autenticação de mensagens adequados a dispositivos restritos, protegendo os dados médicos durante a transmissão entre sensores, gateways e servidores.', 'Sensor'),
  ('02-W', 'Os dados de saúde transmitidos são protegidos por criptografia?', 'Aplicar mecanismos de criptografia e autenticação de mensagens adequados a dispositivos restritos, protegendo os dados médicos durante a transmissão entre sensores, gateways e servidores.', 'Wearable'),
  ('02-I', 'Os dados de saúde transmitidos são protegidos por criptografia?', 'Aplicar mecanismos de criptografia e autenticação de mensagens adequados a dispositivos restritos, protegendo os dados médicos durante a transmissão entre sensores, gateways e servidores.', 'Implantavel'),
  
  -- Pergunta 3 (Sensor, Wearable, Implantavel)
  ('03-S', 'Os dados de saúde armazenados localmente ou em infraestrutura externa são protegidos por criptografia?', 'Utilizar mecanismos de criptografia para proteção de dados médicos em repouso, associados a armazenamento seguro e gerenciamento adequado de chaves criptográficas.', 'Sensor'),
  ('03-W', 'Os dados de saúde armazenados localmente ou em infraestrutura externa são protegidos por criptografia?', 'Utilizar mecanismos de criptografia para proteção de dados médicos em repouso, associados a armazenamento seguro e gerenciamento adequado de chaves criptográficas.', 'Wearable'),
  ('03-I', 'Os dados de saúde armazenados localmente ou em infraestrutura externa são protegidos por criptografia?', 'Utilizar mecanismos de criptografia para proteção de dados médicos em repouso, associados a armazenamento seguro e gerenciamento adequado de chaves criptográficas.', 'Implantavel'),
  
  -- Pergunta 4 (Sensor, Wearable, Implantavel)
  ('04-S', 'O dispositivo possui mecanismos de detecção de intrusão ou comportamento anômalo compatíveis com dispositivos restritos?', 'Implementar mecanismos leves de detecção de anomalias ou intrusão para identificar tentativas de ataque.', 'Sensor'),
  ('04-W', 'O dispositivo possui mecanismos de detecção de intrusão ou comportamento anômalo compatíveis com dispositivos restritos?', 'Implementar mecanismos leves de detecção de anomalias ou intrusão para identificar tentativas de ataque.', 'Wearable'),
  ('04-I', 'O dispositivo possui mecanismos de detecção de intrusão ou comportamento anômalo compatíveis com dispositivos restritos?', 'Implementar mecanismos leves de detecção de anomalias ou intrusão para identificar tentativas de ataque.', 'Implantavel'),
  
  -- Pergunta 5 (Sensor, Wearable - SEM IMPLANTAVEL)
  ('05-S', 'O protocolo de comunicação utiliza criptografia autenticada para garantir confidencialidade e integridade dos dados?', 'Utilizar modos autenticados de criptografia (AEAD), como AES-GCM ou AES-CCM, para garantir confidencialidade e integridade dos dados.', 'Sensor'),
  ('05-W', 'O protocolo de comunicação utiliza criptografia autenticada para garantir confidencialidade e integridade dos dados?', 'Utilizar modos autenticados de criptografia (AEAD), como AES-GCM ou AES-CCM, para garantir confidencialidade e integridade dos dados.', 'Wearable'),
  
  -- Pergunta 6 (Sensor, Wearable, Implantavel)
  ('06-S', 'O sistema implementa mecanismos seguros de distribuição e gerenciamento de chaves criptográficas?', 'Utilizar mecanismos seguros de distribuição e gerenciamento de chaves criptográficas (ex.: autenticação mútua, derivação segura de chaves ou abordagens biométricas baseadas em ECG).', 'Sensor'),
  ('06-W', 'O sistema implementa mecanismos seguros de distribuição e gerenciamento de chaves criptográficas?', 'Utilizar mecanismos seguros de distribuição e gerenciamento de chaves criptográficas (ex.: autenticação mútua, derivação segura de chaves ou abordagens biométricas baseadas em ECG).', 'Wearable'),
  ('06-I', 'O sistema implementa mecanismos seguros de distribuição e gerenciamento de chaves criptográficas?', 'Utilizar mecanismos seguros de distribuição e gerenciamento de chaves criptográficas (ex.: autenticação mútua, derivação segura de chaves ou abordagens biométricas baseadas em ECG).', 'Implantavel'),
  
  -- Pergunta 7 (Sensor, Wearable, Implantavel)
  ('07-S', 'O sistema implementa controle de acesso com autenticação prévia para restringir operações sensíveis a entidades autorizadas?', 'Implementar mecanismos de autenticação e autorização para operações críticas.', 'Sensor'),
  ('07-W', 'O sistema implementa controle de acesso com autenticação prévia para restringir operações sensíveis a entidades autorizadas?', 'Implementar mecanismos de autenticação e autorização para operações críticas.', 'Wearable'),
  ('07-I', 'O sistema implementa controle de acesso com autenticação prévia para restringir operações sensíveis a entidades autorizadas?', 'Implementar mecanismos de autenticação e autorização para operações críticas.', 'Implantavel'),
  
  -- Pergunta 8 (Sensor, Wearable, Implantavel)
  ('08-S', 'O sistema possui mecanismos de proteção contra ataques de negação de serviço (DoS)?', 'Implementar mecanismos como rate limiting, limitação de tentativas de autenticação e controle do uso de recursos para mitigar ataques de negação de serviço (DoS).', 'Sensor'),
  ('08-W', 'O sistema possui mecanismos de proteção contra ataques de negação de serviço (DoS)?', 'Implementar mecanismos como rate limiting, limitação de tentativas de autenticação e controle do uso de recursos para mitigar ataques de negação de serviço (DoS).', 'Wearable'),
  ('08-I', 'O sistema possui mecanismos de proteção contra ataques de negação de serviço (DoS)?', 'Implementar mecanismos como rate limiting, limitação de tentativas de autenticação e controle do uso de recursos para mitigar ataques de negação de serviço (DoS).', 'Implantavel'),
  
  -- Pergunta 9 (Sensor, Wearable, Implantavel)
  ('09-S', 'O sistema implementa mecanismos para prevenir ataques de replay e garantir freshness dos dados?', 'Utilizar mecanismos de verificação de frescor, como timestamps, nonces e sequence numbers.', 'Sensor'),
  ('09-W', 'O sistema implementa mecanismos para prevenir ataques de replay e garantir freshness dos dados?', 'Utilizar mecanismos de verificação de frescor, como timestamps, nonces e sequence numbers.', 'Wearable'),
  ('09-I', 'O sistema implementa mecanismos para prevenir ataques de replay e garantir freshness dos dados?', 'Utilizar mecanismos de verificação de frescor, como timestamps, nonces e sequence numbers.', 'Implantavel'),
  
  -- Pergunta 10 (Sensor, Wearable - SEM IMPLANTAVEL)
  ('10-S', 'O dispositivo utiliza identidades temporárias ou pseudônimos em vez de identificadores reais para proteger a privacidade do paciente?', 'Implementar mecanismos de pseudonimização com atualização periódica de identificadores para reduzir rastreamento e correlação de comunicações.', 'Sensor'),
  ('10-W', 'O dispositivo utiliza identidades temporárias ou pseudônimos em vez de identificadores reais para proteger a privacidade do paciente?', 'Implementar mecanismos de pseudonimização com atualização periódica de identificadores para reduzir rastreamento e correlação de comunicações.', 'Wearable'),
  
  -- Pergunta 11 (Sensor, Wearable - SEM IMPLANTAVEL)
  ('11-S', 'O sistema protege contra rastreamento da localização do paciente por sinais sem fio?', 'Implementar mecanismos de anonimização e técnicas de mitigação de radio fingerprinting para reduzir o rastreamento da localização do paciente.', 'Sensor'),
  ('11-W', 'O sistema protege contra rastreamento da localização do paciente por sinais sem fio?', 'Implementar mecanismos de anonimização e técnicas de mitigação de radio fingerprinting para reduzir o rastreamento da localização do paciente.', 'Wearable'),
  
  -- Pergunta 12 (Sensor, Wearable - SEM IMPLANTAVEL)
  ('12-S', 'O dispositivo permite atualização segura de firmware (OTA/FOTA) com autenticação e verificação de integridade?', 'Implementar mecanismos de atualização segura com validação criptográfica de firmware antes da instalação.', 'Sensor'),
  ('12-W', 'O dispositivo permite atualização segura de firmware (OTA/FOTA) com autenticação e verificação de integridade?', 'Implementar mecanismos de atualização segura com validação criptográfica de firmware antes da instalação.', 'Wearable'),
  
  -- Pergunta 13 (Sensor, Wearable - SEM IMPLANTAVEL)
  ('13-S', 'O sistema possui mecanismos para detectar sensores ou dispositivos maliciosos, comprometidos ou falsificados na rede?', 'Implementar mecanismos de detecção de intrusão (IDS) para identificar dispositivos maliciosos, comprometidos ou falsificados na rede, incluindo abordagens baseadas em aprendizado de máquina quando aplicável.', 'Sensor'),
  ('13-W', 'O sistema possui mecanismos para detectar sensores ou dispositivos maliciosos, comprometidos ou falsificados na rede?', 'Implementar mecanismos de detecção de intrusão (IDS) para identificar dispositivos maliciosos, comprometidos ou falsificados na rede, incluindo abordagens baseadas em aprendizado de máquina quando aplicável.', 'Wearable'),
  
  -- Pergunta 14 (Sensor, Wearable - SEM IMPLANTAVEL)
  ('14-S', 'O sistema garante disponibilidade e continuidade operacional dos serviços de monitoramento médico mesmo sob falhas ou ataques?', 'Implementar mecanismos de tolerância a falhas, redundância, detecção de incidentes e recuperação para garantir a continuidade operacional dos serviços de monitoramento médico.', 'Sensor'),
  ('14-W', 'O sistema garante disponibilidade e continuidade operacional dos serviços de monitoramento médico mesmo sob falhas ou ataques?', 'Implementar mecanismos de tolerância a falhas, redundância, detecção de incidentes e recuperação para garantir a continuidade operacional dos serviços de monitoramento médico.', 'Wearable'),
  
  -- Pergunta 15 (Sensor, Wearable, Implantavel)
  ('15-S', 'O dispositivo mantém suas funções médicas essenciais mesmo quando a comunicação sem fio é desativada por motivos de segurança ou falhas de comunicação?', 'Implementar mecanismos failafe que permitam manter funções médicas essenciais mesmo sob falhas de comunicação ou desativação do canal sem fio.', 'Sensor'),
  ('15-W', 'O dispositivo mantém suas funções médicas essenciais mesmo quando a comunicação sem fio é desativada por motivos de segurança ou falhas de comunicação?', 'Implementar mecanismos failafe que permitam manter funções médicas essenciais mesmo sob falhas de comunicação ou desativação do canal sem fio.', 'Wearable'),
  ('15-I', 'O dispositivo mantém suas funções médicas essenciais mesmo quando a comunicação sem fio é desativada por motivos de segurança ou falhas de comunicação?', 'Implementar mecanismos failafe que permitam manter funções médicas essenciais mesmo sob falhas de comunicação ou desativação do canal sem fio.', 'Implantavel'),
  
  -- Pergunta 16 (Sensor, Wearable, Implantavel)
  ('16-S', 'O sistema mantém registros de eventos de acesso e tentativas de acesso relevantes para auditoria e monitoramento de segurança?', 'Implementar mecanismos leves de logging e auditoria protegidos contra modificação e acesso não autorizado.', 'Sensor'),
  ('16-W', 'O sistema mantém registros de eventos de acesso e tentativas de acesso relevantes para auditoria e monitoramento de segurança?', 'Implementar mecanismos leves de logging e auditoria protegidos contra modificação e acesso não autorizado.', 'Wearable'),
  ('16-I', 'O sistema mantém registros de eventos de acesso e tentativas de acesso relevantes para auditoria e monitoramento de segurança?', 'Implementar mecanismos leves de logging e auditoria protegidos contra modificação e acesso não autorizado.', 'Implantavel')
ON CONFLICT DO NOTHING;

-- ============================================================
-- 3. Associar items aos princípios (Apenas com os códigos inseridos)
-- ============================================================
WITH mapping(codes, principles) AS (
  VALUES
    (ARRAY['01-S', '01-W', '01-I'], ARRAY['Adequação', 'Segurança', 'Prevenção']),
    (ARRAY['02-S', '02-W', '02-I'], ARRAY['Segurança', 'Prevenção']),
    (ARRAY['03-S', '03-W', '03-I'], ARRAY['Segurança', 'Responsabilização']),
    (ARRAY['04-S', '04-W', '04-I'], ARRAY['Prevenção', 'Segurança']),
    (ARRAY['05-S', '05-W'],         ARRAY['Segurança', 'Prevenção']),
    (ARRAY['06-S', '06-W', '06-I'], ARRAY['Segurança', 'Prevenção']),
    (ARRAY['07-S', '07-W', '07-I'], ARRAY['Segurança', 'Necessidade', 'Prevenção']),
    (ARRAY['08-S', '08-W', '08-I'], ARRAY['Segurança', 'Prevenção']),
    (ARRAY['09-S', '09-W', '09-I'], ARRAY['Segurança', 'Prevenção']),
    (ARRAY['10-S', '10-W'],         ARRAY['Necessidade', 'Segurança', 'Prevenção']),
    (ARRAY['11-S', '11-W'],         ARRAY['Necessidade', 'Segurança']),
    (ARRAY['12-S', '12-W'],         ARRAY['Segurança', 'Prevenção', 'Responsabilização']),
    (ARRAY['13-S', '13-W'],         ARRAY['Segurança', 'Prevenção']),
    (ARRAY['14-S', '14-W'],         ARRAY['Segurança', 'Prevenção', 'Responsabilização']),
    (ARRAY['15-S', '15-W', '15-I'], ARRAY['Segurança', 'Prevenção']),
    (ARRAY['16-S', '16-W', '16-I'], ARRAY['Responsabilização', 'Segurança'])
)
INSERT INTO "_item_principles" ("A", "B")
SELECT i.id, p.id
FROM mapping m
JOIN items i ON i.code = ANY(m.codes)
JOIN principles p ON p.name = ANY(m.principles)
ON CONFLICT DO NOTHING;