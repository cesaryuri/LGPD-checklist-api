-- ============================================================
-- 1. Inserir princípios novos (apenas se não existirem)
-- ============================================================
INSERT INTO principles (name) VALUES
  ('Adequação'),
  ('Segurança'),
  ('Prevenção'),
  ('Responsabilização'),
  ('Necessidade')
ON CONFLICT DO NOTHING;

-- ============================================================
-- 2. Inserir todos os itens em Lote (Batch Insert)
-- ============================================================
INSERT INTO items (code, item_desc, recommendations, device_type) VALUES
  -- Pergunta 1 — criptografia leve (Sensor + Implantavel)
  ('01', 'O dispositivo utiliza mecanismos criptográficos leves e compatíveis com suas limitações de energia e processamento?', 'Emprego de mecanismos criptográficos leves com nível de segurança adequado, considerando restrições de processamento, memória e energia.', 'Sensor'),
  ('01', 'O dispositivo utiliza mecanismos criptográficos leves e compatíveis com suas limitações de energia e processamento?', 'Emprego de mecanismos criptográficos leves com nível de segurança adequado, considerando restrições de processamento, memória e energia.', 'Implantavel'),
  
  -- Pergunta 2 — criptografia na transmissão (Sensor + Implantavel)
  ('02', 'Os dados de saúde transmitidos são protegidos por criptografia?', 'Aplicar mecanismos de criptografia e autenticação de mensagens adequados a dispositivos restritos, protegendo os dados médicos durante a transmissão entre sensores, gateways e servidores.', 'Sensor'),
  ('02', 'Os dados de saúde transmitidos são protegidos por criptografia?', 'Aplicar mecanismos de criptografia e autenticação de mensagens adequados a dispositivos restritos, protegendo os dados médicos durante a transmissão entre sensores, gateways e servidores.', 'Implantavel'),
  
  -- Pergunta 3 — criptografia em repouso (Sensor + Implantavel)
  ('03', 'Os dados de saúde armazenados localmente ou em infraestrutura externa são protegidos por criptografia?', 'Utilizar mecanismos de criptografia para proteção de dados médicos em repouso, associados a armazenamento seguro e gerenciamento adequado de chaves criptográficas.', 'Sensor'),
  ('03', 'Os dados de saúde armazenados localmente ou em infraestrutura externa são protegidos por criptografia?', 'Utilizar mecanismos de criptografia para proteção de dados médicos em repouso, associados a armazenamento seguro e gerenciamento adequado de chaves criptográficas.', 'Implantavel'),
  
  -- Pergunta 4 — detecção de intrusão (Sensor + Implantavel)
  ('04', 'O dispositivo possui mecanismos de detecção de intrusão ou comportamento anômalo compatíveis com dispositivos restritos?', 'Implementar mecanismos leves de detecção de anomalias ou intrusão para identificar tentativas de ataque.', 'Sensor'),
  ('04', 'O dispositivo possui mecanismos de detecção de intrusão ou comportamento anômalo compatíveis com dispositivos restritos?', 'Implementar mecanismos leves de detecção de anomalias ou intrusão para identificar tentativas de ataque.', 'Implantavel'),
  
  -- Pergunta 5 — criptografia autenticada AEAD (Sensor + Wearable + Implantavel)
  ('05', 'O protocolo de comunicação utiliza criptografia autenticada para garantir confidencialidade e integridade dos dados?', 'Utilizar modos autenticados de criptografia (AEAD), como AES-GCM ou AES-CCM, para garantir confidencialidade e integridade dos dados.', 'Sensor'),
  ('05', 'O protocolo de comunicação utiliza criptografia autenticada para garantir confidencialidade e integridade dos dados?', 'Utilizar modos autenticados de criptografia (AEAD), como AES-GCM ou AES-CCM, para garantir confidencialidade e integridade dos dados.', 'Wearable'),
  ('05', 'O protocolo de comunicação utiliza criptografia autenticada para garantir confidencialidade e integridade dos dados?', 'Utilizar modos autenticados de criptografia (AEAD), como AES-GCM ou AES-CCM, para garantir confidencialidade e integridade dos dados.', 'Implantavel'),
  
  -- Pergunta 6 — gerenciamento de chaves (Sensor + Implantavel)
  ('06', 'O sistema implementa mecanismos seguros de distribuição e gerenciamento de chaves criptográficas?', 'Utilizar mecanismos seguros de distribuição e gerenciamento de chaves criptográficas (ex.: autenticação mútua, derivação segura de chaves ou abordagens biométricas baseadas em ECG).', 'Sensor'),
  ('06', 'O sistema implementa mecanismos seguros de distribuição e gerenciamento de chaves criptográficas?', 'Utilizar mecanismos seguros de distribuição e gerenciamento de chaves criptográficas (ex.: autenticação mútua, derivação segura de chaves ou abordagens biométricas baseadas em ECG).', 'Implantavel'),
  
  -- Pergunta 7 — controle de acesso (Sensor + Implantavel)
  ('07', 'O sistema implementa controle de acesso com autenticação prévia para restringir operações sensíveis a entidades autorizadas?', 'Implementar mecanismos de autenticação e autorização para operações críticas.', 'Sensor'),
  ('07', 'O sistema implementa controle de acesso com autenticação prévia para restringir operações sensíveis a entidades autorizadas?', 'Implementar mecanismos de autenticação e autorização para operações críticas.', 'Implantavel'),
  
  -- Pergunta 8 — proteção DoS (Sensor + Implantavel)
  ('08', 'O sistema possui mecanismos de proteção contra ataques de negação de serviço (DoS)?', 'Implementar mecanismos como rate limiting, limitação de tentativas de autenticação e controle do uso de recursos para mitigar ataques de negação de serviço (DoS).', 'Sensor'),
  ('08', 'O sistema possui mecanismos de proteção contra ataques de negação de serviço (DoS)?', 'Implementar mecanismos como rate limiting, limitação de tentativas de autenticação e controle do uso de recursos para mitigar ataques de negação de serviço (DoS).', 'Implantavel'),
  
  -- Pergunta 9 — replay e freshness (Sensor + Implantavel)
  ('09', 'O sistema implementa mecanismos para prevenir ataques de replay e garantir freshness dos dados?', 'Utilizar mecanismos de verificação de frescor, como timestamps, nonces e sequence numbers.', 'Sensor'),
  ('09', 'O sistema implementa mecanismos para prevenir ataques de replay e garantir freshness dos dados?', 'Utilizar mecanismos de verificação de frescor, como timestamps, nonces e sequence numbers.', 'Implantavel'),
  
  -- Pergunta 10 — pseudonimização (Sensor + Wearable + Implantavel)
  ('10', 'O dispositivo utiliza identidades temporárias ou pseudônimos em vez de identificadores reais para proteger a privacidade do paciente?', 'Implementar mecanismos de pseudonimização com atualização periódica de identificadores para reduzir rastreamento e correlação de comunicações.', 'Sensor'),
  ('10', 'O dispositivo utiliza identidades temporárias ou pseudônimos em vez de identificadores reais para proteger a privacidade do paciente?', 'Implementar mecanismos de pseudonimização com atualização periódica de identificadores para reduzir rastreamento e correlação de comunicações.', 'Wearable'),
  ('10', 'O dispositivo utiliza identidades temporárias ou pseudônimos em vez de identificadores reais para proteger a privacidade do paciente?', 'Implementar mecanismos de pseudonimização com atualização periódica de identificadores para reduzir rastreamento e correlação de comunicações.', 'Implantavel'),
  
  -- Pergunta 11 — rastreamento por sinal (Sensor + Wearable + Implantavel)
  ('11', 'O sistema protege contra rastreamento da localização do paciente por sinais sem fio?', 'Implementar mecanismos de anonimização e técnicas de mitigação de radio fingerprinting para reduzir o rastreamento da localização do paciente.', 'Sensor'),
  ('11', 'O sistema protege contra rastreamento da localização do paciente por sinais sem fio?', 'Implementar mecanismos de anonimização e técnicas de mitigação de radio fingerprinting para reduzir o rastreamento da localização do paciente.', 'Wearable'),
  ('11', 'O sistema protege contra rastreamento da localização do paciente por sinais sem fio?', 'Implementar mecanismos de anonimização e técnicas de mitigação de radio fingerprinting para reduzir o rastreamento da localização do paciente.', 'Implantavel'),
  
  -- Pergunta 12 — atualização segura OTA (Sensor + Wearable + Implantavel)
  ('12', 'O dispositivo permite atualização segura de firmware (OTA/FOTA) com autenticação e verificação de integridade?', 'Implementar mecanismos de atualização segura com validação criptográfica de firmware antes da instalação.', 'Sensor'),
  ('12', 'O dispositivo permite atualização segura de firmware (OTA/FOTA) com autenticação e verificação de integridade?', 'Implementar mecanismos de atualização segura com validação criptográfica de firmware antes da instalação.', 'Wearable'),
  ('12', 'O dispositivo permite atualização segura de firmware (OTA/FOTA) com autenticação e verificação de integridade?', 'Implementar mecanismos de atualização segura com validação criptográfica de firmware antes da instalação.', 'Implantavel'),
  
  -- Pergunta 13 — detecção de dispositivos maliciosos (Sensor + Wearable + Implantavel)
  ('13', 'O sistema possui mecanismos para detectar sensores ou dispositivos maliciosos, comprometidos ou falsificados na rede?', 'Implementar mecanismos de detecção de intrusão (IDS) para identificar dispositivos maliciosos, comprometidos ou falsificados na rede, incluindo abordagens baseadas em aprendizado de máquina quando aplicável.', 'Sensor'),
  ('13', 'O sistema possui mecanismos para detectar sensores ou dispositivos maliciosos, comprometidos ou falsificados na rede?', 'Implementar mecanismos de detecção de intrusão (IDS) para identificar dispositivos maliciosos, comprometidos ou falsificados na rede, incluindo abordagens baseadas em aprendizado de máquina quando aplicável.', 'Wearable'),
  ('13', 'O sistema possui mecanismos para detectar sensores ou dispositivos maliciosos, comprometidos ou falsificados na rede?', 'Implementar mecanismos de detecção de intrusão (IDS) para identificar dispositivos maliciosos, comprometidos ou falsificados na rede, incluindo abordagens baseadas em aprendizado de máquina quando aplicável.', 'Implantavel'),
  
  -- Pergunta 14 — disponibilidade e continuidade (Sensor + Wearable + Implantavel)
  ('14', 'O sistema garante disponibilidade e continuidade operacional dos serviços de monitoramento médico mesmo sob falhas ou ataques?', 'Implementar mecanismos de tolerância a falhas, redundância, detecção de incidentes e recuperação para garantir a continuidade operacional dos serviços de monitoramento médico.', 'Sensor'),
  ('14', 'O sistema garante disponibilidade e continuidade operacional dos serviços de monitoramento médico mesmo sob falhas ou ataques?', 'Implementar mecanismos de tolerância a falhas, redundância, detecção de incidentes e recuperação para garantir a continuidade operacional dos serviços de monitoramento médico.', 'Wearable'),
  ('14', 'O sistema garante disponibilidade e continuidade operacional dos serviços de monitoramento médico mesmo sob falhas ou ataques?', 'Implementar mecanismos de tolerância a falhas, redundância, detecção de incidentes e recuperação para garantir a continuidade operacional dos serviços de monitoramento médico.', 'Implantavel'),
  
  -- Pergunta 15 — failafe (Sensor + Implantavel)
  ('15', 'O dispositivo mantém suas funções médicas essenciais mesmo quando a comunicação sem fio é desativada por motivos de segurança ou falhas de comunicação?', 'Implementar mecanismos failafe que permitam manter funções médicas essenciais mesmo sob falhas de comunicação ou desativação do canal sem fio.', 'Sensor'),
  ('15', 'O dispositivo mantém suas funções médicas essenciais mesmo quando a comunicação sem fio é desativada por motivos de segurança ou falhas de comunicação?', 'Implementar mecanismos failafe que permitam manter funções médicas essenciais mesmo sob falhas de comunicação ou desativação do canal sem fio.', 'Implantavel'),
  
  -- Pergunta 16 — logging e auditoria (Sensor + Implantavel)
  ('16', 'O sistema mantém registros de eventos de acesso e tentativas de acesso relevantes para auditoria e monitoramento de segurança?', 'Implementar mecanismos leves de logging e auditoria protegidos contra modificação e acesso não autorizado.', 'Sensor'),
  ('16', 'O sistema mantém registros de eventos de acesso e tentativas de acesso relevantes para auditoria e monitoramento de segurança?', 'Implementar mecanismos leves de logging e auditoria protegidos contra modificação e acesso não autorizado.', 'Implantavel')
ON CONFLICT DO NOTHING;

-- ============================================================
-- 3. Associar items aos princípios (Usando CTE com Arrays)
-- ============================================================
WITH mapping(codes, principles) AS (
  VALUES
    (ARRAY['01', '01'], ARRAY['Adequação', 'Segurança', 'Prevenção']),
    (ARRAY['02', '02'], ARRAY['Segurança', 'Prevenção']),
    (ARRAY['03', '03'], ARRAY['Segurança', 'Responsabilização']),
    (ARRAY['04', '04'], ARRAY['Prevenção', 'Segurança']),
    (ARRAY['05', '05', '05'], ARRAY['Segurança', 'Prevenção']),
    (ARRAY['06', '06'], ARRAY['Segurança', 'Prevenção']),
    (ARRAY['07', '07'], ARRAY['Segurança', 'Necessidade', 'Prevenção']),
    (ARRAY['08', '08'], ARRAY['Segurança', 'Prevenção']),
    (ARRAY['09', '09'], ARRAY['Segurança', 'Prevenção']),
    (ARRAY['10', '10', '10'], ARRAY['Necessidade', 'Segurança', 'Prevenção']),
    (ARRAY['11', '11', '11'], ARRAY['Necessidade', 'Segurança']),
    (ARRAY['12', '12', '12'], ARRAY['Segurança', 'Prevenção', 'Responsabilização']),
    (ARRAY['13', '13', '13'], ARRAY['Segurança', 'Prevenção']),
    (ARRAY['14', '14', '14'], ARRAY['Segurança', 'Prevenção', 'Responsabilização']),
    (ARRAY['15', '15'], ARRAY['Segurança', 'Prevenção']),
    (ARRAY['16', '16'], ARRAY['Responsabilização', 'Segurança'])
)
INSERT INTO "_item_principles" ("A", "B")
SELECT i.id, p.id
FROM mapping m
JOIN items i ON i.code = ANY(m.codes)
JOIN principles p ON p.name = ANY(m.principles)
ON CONFLICT DO NOTHING;