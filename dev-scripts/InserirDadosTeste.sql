TRUNCATE TABLE 
  "users", "principles", "items", "systems", "checklists", "checklist_items"
RESTART IDENTITY CASCADE;

INSERT INTO principles (name) VALUES
('Sobre transparência de Dados (T)'),
('Sobre Consentimento do Titular (C)'),
('Sobre os Direitos do Titular (D)'),
('Sobre Segurança de Dados (S)'),
('Sobre Responsabilidade do Controlador (R)'),
('Acesso ao Dispositivo (A)'),
('Segurança Física (SF)');

INSERT INTO users (name, office, email, password) VALUES
('Alice Silva', 'DPO', 'alice@example.com', '$2a$10$Rz1QmUKEFJGkHq0P5Fq2XuXkIBIGm5OSmFRs7U6tHVkFHpC8ZQnW'),
('Bruno Costa', 'Analista', 'bruno@example.com', '$2a$10$Rz1QmUKEFJGkHq0P5Fq2XuXkIBIGm5OSmFRs7U6tHVkFHpC8ZQnW'),
('Carla Mendes', 'Gerente', 'carla@example.com', '$2a$10$Rz1QmUKEFJGkHq0P5Fq2XuXkIBIGm5OSmFRs7U6tHVkFHpC8ZQnW'),
('Diego Rocha', 'Desenvolvedor', 'diego@example.com', '$2a$10$Rz1QmUKEFJGkHq0P5Fq2XuXkIBIGm5OSmFRs7U6tHVkFHpC8ZQnW'),
('Elena Ferreira', 'Auditora', 'elena@example.com', '$2a$10$Rz1QmUKEFJGkHq0P5Fq2XuXkIBIGm5OSmFRs7U6tHVkFHpC8ZQnW'),
('Felipe Nunes', 'DPO', 'felipe@example.com', '$2a$10$Rz1QmUKEFJGkHq0P5Fq2XuXkIBIGm5OSmFRs7U6tHVkFHpC8ZQnW'),
('Gabriela Lima', 'Analista', 'gabriela@example.com', '$2a$10$Rz1QmUKEFJGkHq0P5Fq2XuXkIBIGm5OSmFRs7U6tHVkFHpC8ZQnW'),
('Henrique Souza', 'Gerente', 'henrique@example.com', '$2a$10$Rz1QmUKEFJGkHq0P5Fq2XuXkIBIGm5OSmFRs7U6tHVkFHpC8ZQnW'),
('Isabela Martins', 'Desenvolvedora', 'isabela@example.com', '$2a$10$Rz1QmUKEFJGkHq0P5Fq2XuXkIBIGm5OSmFRs7U6tHVkFHpC8ZQnW'),
('João Pereira', 'Auditor', 'joao@example.com', '$2a$10$Rz1QmUKEFJGkHq0P5Fq2XuXkIBIGm5OSmFRs7U6tHVkFHpC8ZQnW'),
('Karina Alves', 'DPO', 'karina@example.com', '$2a$10$Rz1QmUKEFJGkHq0P5Fq2XuXkIBIGm5OSmFRs7U6tHVkFHpC8ZQnW'),
('Lucas Barbosa', 'Analista', 'lucas@example.com', '$2a$10$Rz1QmUKEFJGkHq0P5Fq2XuXkIBIGm5OSmFRs7U6tHVkFHpC8ZQnW'),
('Mariana Castro', 'Gerente', 'mariana@example.com', '$2a$10$Rz1QmUKEFJGkHq0P5Fq2XuXkIBIGm5OSmFRs7U6tHVkFHpC8ZQnW'),
('Nathan Dias', 'Desenvolvedor', 'nathan@example.com', '$2a$10$Rz1QmUKEFJGkHq0P5Fq2XuXkIBIGm5OSmFRs7U6tHVkFHpC8ZQnW'),
('Olivia Esteves', 'Auditora', 'olivia@example.com', '$2a$10$Rz1QmUKEFJGkHq0P5Fq2XuXkIBIGm5OSmFRs7U6tHVkFHpC8ZQnW'),
('Paulo Figueiredo', 'DPO', 'paulo@example.com', '$2a$10$Rz1QmUKEFJGkHq0P5Fq2XuXkIBIGm5OSmFRs7U6tHVkFHpC8ZQnW'),
('Quiteria Gomes', 'Analista', 'quiteria@example.com', '$2a$10$Rz1QmUKEFJGkHq0P5Fq2XuXkIBIGm5OSmFRs7U6tHVkFHpC8ZQnW'),
('Rafael Henrique', 'Gerente', 'rafael@example.com', '$2a$10$Rz1QmUKEFJGkHq0P5Fq2XuXkIBIGm5OSmFRs7U6tHVkFHpC8ZQnW'),
('Sandra Ivo', 'Desenvolvedora', 'sandra@example.com', '$2a$10$Rz1QmUKEFJGkHq0P5Fq2XuXkIBIGm5OSmFRs7U6tHVkFHpC8ZQnW'),
('Thiago Jardim', 'Auditor', 'thiago@example.com', '$2a$10$Rz1QmUKEFJGkHq0P5Fq2XuXkIBIGm5OSmFRs7U6tHVkFHpC8ZQnW'),
('Ursula Klein', 'DPO', 'ursula@example.com', '$2a$10$Rz1QmUKEFJGkHq0P5Fq2XuXkIBIGm5OSmFRs7U6tHVkFHpC8ZQnW'),
('Victor Lima', 'Analista', 'victor@example.com', '$2a$10$Rz1QmUKEFJGkHq0P5Fq2XuXkIBIGm5OSmFRs7U6tHVkFHpC8ZQnW'),
('Wendy Maia', 'Gerente', 'wendy@example.com', '$2a$10$Rz1QmUKEFJGkHq0P5Fq2XuXkIBIGm5OSmFRs7U6tHVkFHpC8ZQnW'),
('Xavier Neto', 'Desenvolvedor', 'xavier@example.com', '$2a$10$Rz1QmUKEFJGkHq0P5Fq2XuXkIBIGm5OSmFRs7U6tHVkFHpC8ZQnW'),
('Yasmin Oliveira', 'Auditora', 'yasmin@example.com', '$2a$10$Rz1QmUKEFJGkHq0P5Fq2XuXkIBIGm5OSmFRs7U6tHVkFHpC8ZQnW'),
('Zara Pinto', 'DPO', 'zara@example.com', '$2a$10$Rz1QmUKEFJGkHq0P5Fq2XuXkIBIGm5OSmFRs7U6tHVkFHpC8ZQnW'),
('Andre Queiroz', 'Analista', 'andre@example.com', '$2a$10$Rz1QmUKEFJGkHq0P5Fq2XuXkIBIGm5OSmFRs7U6tHVkFHpC8ZQnW'),
('Beatriz Reis', 'Gerente', 'beatriz@example.com', '$2a$10$Rz1QmUKEFJGkHq0P5Fq2XuXkIBIGm5OSmFRs7U6tHVkFHpC8ZQnW'),
('Caio Santos', 'Desenvolvedor', 'caio@example.com', '$2a$10$Rz1QmUKEFJGkHq0P5Fq2XuXkIBIGm5OSmFRs7U6tHVkFHpC8ZQnW'),
('Daniela Torres', 'Auditora', 'daniela@example.com', '$2a$10$Rz1QmUKEFJGkHq0P5Fq2XuXkIBIGm5OSmFRs7U6tHVkFHpC8ZQnW'),
('Eduardo Ulhoa', 'DPO', 'eduardo@example.com', '$2a$10$Rz1QmUKEFJGkHq0P5Fq2XuXkIBIGm5OSmFRs7U6tHVkFHpC8ZQnW'),
('Fernanda Vaz', 'Analista', 'fernanda@example.com', '$2a$10$Rz1QmUKEFJGkHq0P5Fq2XuXkIBIGm5OSmFRs7U6tHVkFHpC8ZQnW'),
('Gustavo Wend', 'Gerente', 'gustavo@example.com', '$2a$10$Rz1QmUKEFJGkHq0P5Fq2XuXkIBIGm5OSmFRs7U6tHVkFHpC8ZQnW'),
('Helena Xavier', 'Desenvolvedora', 'helena@example.com', '$2a$10$Rz1QmUKEFJGkHq0P5Fq2XuXkIBIGm5OSmFRs7U6tHVkFHpC8ZQnW'),
('Igor Yunes', 'Auditor', 'igor@example.com', '$2a$10$Rz1QmUKEFJGkHq0P5Fq2XuXkIBIGm5OSmFRs7U6tHVkFHpC8ZQnW'),
('Julia Zanetti', 'DPO', 'julia@example.com', '$2a$10$Rz1QmUKEFJGkHq0P5Fq2XuXkIBIGm5OSmFRs7U6tHVkFHpC8ZQnW'),
('Kevin Abreu', 'Analista', 'kevin@example.com', '$2a$10$Rz1QmUKEFJGkHq0P5Fq2XuXkIBIGm5OSmFRs7U6tHVkFHpC8ZQnW'),
('Laura Braga', 'Gerente', 'laura@example.com', '$2a$10$Rz1QmUKEFJGkHq0P5Fq2XuXkIBIGm5OSmFRs7U6tHVkFHpC8ZQnW'),
('Matheus Frej Lemos Cavalcanti', 'Engenheiro de Software', 'matheusfrej@gmail.com', '$2a$11$rh/s23beBrESrkYy3AkOnOeeEGNLOk5nrRVjOtgE0rk7sATPvOvfq'),
('Teste Test Testos ', 'Engenheiro de testes', 'test@gmail.com', '$2a$11$rh/s23beBrESrkYy3AkOnOeeEGNLOk5nrRVjOtgE0rk7sATPvOvfq');

-- Items do tipo Sensor (ids 1-11)
INSERT INTO items (code, item_desc, recommendations, device_type) VALUES
('T-01', 'As finalidades de tratamento de dados foram definidas na organização?', 'Crie um documento (Política de Privacidade) descrevendo os objetivos e a forma de utilização dos dados.', 'Sensor'),
('T-02', 'O tratamento de dados pessoais é realizado de acordo com uma base legal?', 'Na Política de Privacidade, explique a base legal do tratamento (ex: consentimento, obrigação legal). Consulte o Art. 7 da LGPD para a lista completa.', 'Sensor'),
('T-03', 'O sistema informa ao titular sobre as finalidades de tratamento de dados pessoais?', 'O sistema deve disponibilizar a Política de Privacidade ou Termos de Consentimento para o titular.', 'Sensor'),
('T-04', 'O sistema realiza o tratamento de dados em conformidade com a finalidade apresentada ao titular?', 'Revise o consentimento e implemente as alterações necessárias para garantir a conformidade.', 'Sensor'),
('S-01', 'O sistema realiza o tratamento de dados de forma segura, incluindo proteção contra acesso não autorizado?', 'Garanta a segurança no tratamento, possibilitando apenas indivíduos autorizados a ler, modificar ou excluir dados (Controle de Acesso).', 'Sensor'),
('S-04', 'O sistema utiliza mecanismos para prevenir a ocorrência de danos, destruição ou perda de dados?', 'Implemente boas práticas como backup de dados, armazenamento em nuvem e outras ações para proteger as informações.', 'Sensor'),
('S-06', 'O sistema utiliza boas práticas como privacy by design?', 'Como boa prática para o desenvolvimento e adequação do sistema, implementar a metodologia privacy by design.', 'Sensor'),
('R-01', 'A organização indica um oficial de proteção de dados (DPO) encarregado pelo tratamento de dados?', 'A organização deve indicar um DPO para atuar como canal de comunicação com os titulares e a ANPD.', 'Sensor'),
('A-01', 'A organização fornece credenciais diferentes para cada utilizador?', 'Deve ser realizado o controle de acesso para cada utilizador, criando uma lista de pessoas autorizadas.', 'Sensor'),
('SF-01', 'O dispositivo possui apenas portas em funcionamento, não permitindo portas desnecessárias?', 'Todas as portas que não estão em uso, deverão ser desativadas. Exemplos de portas: RJ-45 e USB.', 'Sensor'),
('SF-02-S', 'O dispositivo não possibilita o acesso físico de pessoas não autorizadas?', 'Analisar o ambiente no qual o dispositivo se encontra, analisando possíveis riscos que o dispositivo poderá sofrer.', 'Sensor'),

-- Items do tipo Wearable (ids 12-22)
('T-05', 'O sistema informa ao titular a forma e duração do tratamento dos seus dados de maneira gratuita e acessível?', 'Descreva na Política de Privacidade a forma e a duração do tratamento dos dados, mantendo a informação sempre acessível.', 'Wearable'),
('T-06', 'O sistema permite o titular consultar sobre a integralidade dos seus dados pessoais de maneira gratuita e acessível?', 'Crie um canal de comunicação (e-mail, página de contato) para que o titular possa requisitar seus dados de forma gratuita.', 'Wearable'),
('C-01', 'O sistema permite que o titular forneça seu consentimento de forma autônoma e clara?', 'Use linguagem clara, evite caixas pré-marcadas e ofereça uma opção para negar ou retirar o consentimento sem prejuízos.', 'Wearable'),
('C-02', 'O sistema solicita consentimento específico para compartilhar dados com outros controladores?', 'Seja transparente sobre o compartilhamento de dados com terceiros, informando o titular de forma clara no consentimento.', 'Wearable'),
('C-03', 'O sistema armazena o consentimento dado pelo titular para comprovações legais?', 'Armazene no banco de dados os registros (logs) de consentimento do titular para comprovação.', 'Wearable'),
('D-01', 'O sistema armazena os dados pessoais em formato que facilite o acesso do titular?', 'Armazene os dados em formatos estruturados e comuns (CSV, JSON, XML) para que possam ser facilmente extraídos.', 'Wearable'),
('D-05', 'O sistema utiliza apenas dados relevantes e adequados à finalidade (Minimização)?', 'Realize a minimização dos dados, utilizando apenas o que for relevante. Considere anonimizar ou eliminar dados desnecessários.', 'Wearable'),
('S-05', 'O sistema utiliza medidas de proteção adequadas para dados pessoais sensíveis?', 'Implemente uma camada adicional de segurança, como criptografia e controle de acesso restrito, para dados sensíveis.', 'Wearable'),
('S-08', 'O sistema fornece a confidencialidade, usando medidas técnicas apropriadas?', 'Realizar a proteção contra acesso não autorizado no uso de dados, como autenticação e controle de acesso.', 'Wearable'),
('A-02', 'São atribuídas senhas diferentes a cada dispositivo para fortalecer a segurança?', 'Utilizar a mesma senha enfraquece a segurança. O ideal é ter senhas diferentes, talvez geradas por um algoritmo.', 'Wearable'),
('R-02', 'A organização divulga publicamente a identidade e as informações de contato do DPO?', 'A informação deve estar de forma clara na Política de Privacidade para que os titulares e a autoridade nacional tenham acesso facilitado.', 'Wearable'),

-- Items do tipo Implantavel (ids 23-33)
('T-07', 'O sistema armazena com exatidão e clareza os dados pessoais coletados dos titulares?', 'Durante a coleta, garanta a correção dos dados. Use validação de campos nos formulários (CPF, CEP, etc).', 'Implantavel'),
('T-08', 'O sistema mantém atualizados os dados pessoais, conforme necessário para a finalidade de seu tratamento?', 'Crie um processo para mapear e revisar os dados. Se descobrir dados incorretos, corrija ou apague-os rapidamente.', 'Implantavel'),
('C-04', 'O sistema permite ao titular meios para recusar ou retirar o consentimento sem prejuízo?', 'O titular deve ter acesso ao seu termo de consentimento ou contrato com a opção de negar ou revogar o tratamento de dados.', 'Implantavel'),
('C-05', 'O tratamento de dados de crianças e adolescentes tem consentimento específico dos pais ou responsável legal?', 'Certifique que apenas o responsável legítimo pode dar o consentimento e atualizá-lo. Considere usar autenticação do titular.', 'Implantavel'),
('D-07', 'O sistema permite excluir os dados pessoais do titular, mediante a sua requisição?', 'Crie um mecanismo para que o titular possa solicitar a remoção permanente de seus dados pessoais.', 'Implantavel'),
('D-08', 'O sistema remove os dados pessoais do titular após o término de seu tratamento?', 'É necessário excluir os dados pessoais do titular após o cumprimento da finalidade, no prazo estabelecido.', 'Implantavel'),
('S-02', 'O sistema respeita as normas de transferência internacional de dados para países com proteção adequada?', 'Verifique se o país de destino possui nível de proteção de dados adequado à LGPD e se a ANPD autoriza tais operações.', 'Implantavel'),
('S-19', 'O dispositivo utiliza protocolos como TLS para criptografar as comunicações?', 'Os protocolos TLS servem para criptografar as comunicações, proporcionando segurança na troca de dados.', 'Implantavel'),
('R-03', 'A organização comunica à ANPD e ao titular a ocorrência de incidente de segurança relevante?', 'Comunique incidentes à ANPD em até 2 dias úteis da ciência. O conteúdo deve seguir o Art. 48 da LGPD.', 'Implantavel'),
('A-03', 'Houve mudança da senha padrão do dispositivo para evitar acesso não autorizado?', 'É de suma importância a mudança imediata da senha padrão do dispositivo, que é facilmente encontrada no manual.', 'Implantavel'),
('SF-03', 'O dispositivo é protegido contra tentativas de ser resetado para configuração de fábrica?', 'Apenas pessoas autorizadas devem ter acesso físico ao botão de reset. Se não for restrito, uma solução é a blindagem do equipamento.', 'Implantavel');


-- Relação item↔principle
INSERT INTO "_item_principles" ("A", "B") VALUES
-- Sensor (ids 1-11)
(1, 1), (1, 2), (1, 5),             -- ITEM 1 (T-01) com 3 Princípios: Transparência, Consentimento e Responsabilidade
(2, 1), (3, 1), (4, 1),             -- T-02 a T-04 → Transparência
(5, 4), (5, 7),                     -- ITEM 5 (S-01) com 2 Princípios: Segurança e Segurança Física
(6, 4), (7, 4),                     -- S-04, S-06 → Segurança
(8, 5),                             -- R-01 → Responsabilidade
(9, 6),                             -- A-01 → Acesso
(10, 7), (11, 7),                   -- SF-01, SF-02-S → Segurança Física
-- Wearable (ids 12-22)
(12, 1), (12, 3),                   -- ITEM 12 (T-05) com 2 Princípios: Transparência e Direitos do Titular
(13, 1),                            -- T-06 → Transparência
(14, 2), (15, 2), (16, 2),          -- C-01, C-02, C-03 → Consentimento
(17, 3), (18, 3),                   -- D-01, D-05 → Direitos
(19, 4), (20, 4),                   -- S-05, S-08 → Segurança
(21, 6),                            -- A-02 → Acesso
(22, 5),                            -- R-02 → Responsabilidade
-- Implantavel (ids 23-33)
(23, 1), (23, 4), (23, 5),          -- ITEM 23 (T-07) com 3 Princípios: Transparência, Segurança e Responsabilidade
(24, 1),                            -- T-08 → Transparência
(25, 2), (26, 2),                   -- C-04, C-05 → Consentimento
(27, 3), (28, 3),                   -- D-07, D-08 → Direitos
(29, 4), (30, 4),                   -- S-02, S-19 → Segurança
(31, 5),                            -- R-03 → Responsabilidade
(32, 6),                            -- A-03 → Acesso
(33, 7);                            -- SF-03 → Segurança Física

INSERT INTO systems (name, description, user_id) VALUES
('Plataforma de Videomonitoramento', 'Serviço de nuvem para câmeras com IA', 1),
('App de Saúde "Vitality"', 'Centraliza dados de smartwatches', 2),
('Assistente "Home Voice"', 'Backend para automação residencial', 3),
('Controle de Acesso Corp', 'Gerenciamento de fechaduras biométricas', 4),
('Rede de Medição Inteligente', 'Coleta de dados de consumo elétrico', 5),
('Gestão de Frotas "OnTrack"', 'Plataforma de telemetria veicular', 6),
('App "SmartFridge"', 'Gerenciamento de geladeiras inteligentes', 7),
('Sistema "AeroView" de Drones', 'Controle e gravação de drones', 8),
('Serviço "FindMe" de Localização', 'Rastreamento de pertences com tags', 9),
('Plataforma "BioScale" de Análise', 'Nuvem para dados de balanças', 10),
('Sistema de Irrigação "AquaFarm"', 'Controle remoto de irrigação', 11),
('Monitor de Qualidade do Ar "AirPure"', 'Coleta de dados de poluição', 12),
('Plataforma de Ponto de Venda "SellFast"', 'Sistema de pagamentos móvel', 13),
('Gateway de Rede Industrial', 'Conexão de sensores de chão de fábrica', 14),
('Sistema de Gerenciamento de Energia Solar', 'Monitoramento de painéis solares', 15),
('Plataforma de Educação a Distância', 'Ambiente virtual de aprendizagem', 16),
('Software de Impressão 3D em Nuvem', 'Gerenciamento de impressoras 3D', 17),
('Controle de Iluminação Pública', 'Sistema de gerenciamento de lâmpadas LED', 18),
('Rastreador de Atividade para Pets', 'Monitoramento de saúde de animais', 19),
('Estação Meteorológica Pessoal', 'Coleta de dados climáticos locais', 20),
('Gerenciador de Senhas Corporativo', 'Cofre de senhas para equipes', 21),
('Plataforma de Análise de Sentimento', 'Análise de mídias sociais', 22),
('Sistema de Reserva de Salas', 'Agendamento de salas de reunião', 23),
('Controle de Estoque Automatizado', 'Gerenciamento de inventário com RFID', 24),
('Plataforma de Telemedicina', 'Consultas médicas online', 25),
('Sistema de Notificação de Emergência', 'Alerta para desastres naturais', 26),
('Gerenciador de Cadeia de Suprimentos', 'Rastreamento de produtos da origem ao fim', 27),
('Plataforma de Crowdfunding', 'Arrecadação de fundos para projetos', 28),
('Software de Simulação de Engenharia', 'Cálculos estruturais em nuvem', 29),
('Sistema de Gerenciamento de Resíduos', 'Otimização de rotas de coleta', 30),
('Plataforma de Gestão de Condomínio', 'Comunicação e reservas para condomínios', 31),
('App de Fidelidade para Varejo', 'Pontos e recompensas para clientes', 32),
('Sistema de Monitoramento de Pacientes', 'Coleta de sinais vitais em hospitais', 33),
('Plataforma de Streaming de Música', 'Serviço de áudio on-demand', 34),
('App de Mobilidade Urbana', 'Serviço de transporte por aplicativo', 35),
('Sistema de Gestão Agrícola', 'Monitoramento de safras e maquinário', 36),
('Plataforma de e-Commerce B2B', 'Vendas online para empresas', 37),
('Software de Análise de Risco de Crédito', 'Avaliação de crédito automatizada', 38),
('App de Meditação e Mindfulness', 'Conteúdo guiado para bem-estar', 39),
('Sistema de Gerenciamento de Frotas de Patinetes', 'Controle e manutenção de patinetes elétricos', 40);

-- Checklists: alternando entre os três tipos de dispositivo
INSERT INTO checklists (user_id, system_id, device_type) VALUES
(1, 1, 'Sensor'),
(2, 2, 'Wearable'),
(3, 3, 'Implantavel'),
(4, 4, 'Sensor'),
(5, 5, 'Wearable'),
(6, 6, 'Implantavel'),
(7, 7, 'Sensor'),
(8, 8, 'Wearable'),
(9, 9, 'Implantavel'),
(10, 10, 'Sensor'),
(11, 11, 'Wearable'),
(12, 12, 'Implantavel'),
(13, 13, 'Sensor'),
(14, 14, 'Wearable'),
(15, 15, 'Implantavel'),
(16, 16, 'Sensor'),
(17, 17, 'Wearable'),
(18, 18, 'Implantavel'),
(19, 19, 'Sensor'),
(20, 20, 'Wearable'),
(21, 21, 'Implantavel'),
(22, 22, 'Sensor'),
(23, 23, 'Wearable'),
(24, 24, 'Implantavel'),
(25, 25, 'Sensor'),
(26, 26, 'Wearable'),
(27, 27, 'Implantavel'),
(28, 28, 'Sensor'),
(29, 29, 'Wearable'),
(30, 30, 'Implantavel'),
(31, 31, 'Sensor'),
(32, 32, 'Wearable'),
(33, 33, 'Implantavel'),
(34, 34, 'Sensor'),
(35, 35, 'Wearable'),
(36, 36, 'Implantavel'),
(37, 37, 'Sensor'),
(38, 38, 'Wearable'),
(39, 39, 'Implantavel'),
(40, 40, 'Sensor');

-- checklist_items: cada checklist responde itens do seu deviceType
-- Sensor checklists (1,4,7,10,13,16,19,22,25,28,31,34,37,40) → items 1-11
INSERT INTO checklist_items (checklist_id, item_id, answer, severity_degree, user_comment) VALUES
(1, 1, 'Sim', null, 'Política de privacidade definida e documentada.'),
(1, 2, 'Não', 'Grave', 'Base legal para coleta de dados não está documentada.'),
(1, 3, 'Sim', null, 'Link para política visível na tela inicial.'),
(1, 5, 'Não', 'Leve', 'Mecanismo de segurança ainda em implementação.'),

(4, 1, 'Sim', null, 'Finalidades documentadas no manual do sistema.'),
(4, 3, 'Sim', null, 'Política de privacidade acessível pelo app.'),
(4, 8, 'Sim', null, 'DPO designado e registrado.'),
(4, 9, 'Não', 'Grave', 'Credenciais compartilhadas entre utilizadores.'),

(7, 2, 'Sim', null, 'Base legal de consentimento aplicada.'),
(7, 5, 'Sim', null, 'Firewall e controle de acesso implementados.'),
(7, 6, 'Sim', null, 'Backup diário configurado em nuvem.'),
(7, 10, 'Não', 'Leve', 'Porta USB desnecessária ainda ativa.'),

(10, 1, 'Sim', null, 'Finalidades descritas no contrato de uso.'),
(10, 4, 'Sim', null, 'Privacy by design aplicado desde o início.'),
(10, 7, 'Sim', null, 'Privacy by design validado por auditoria.'),
(10, 11, 'Sim', null, 'Acesso físico restrito com crachá e câmera.'),

(13, 1, 'Sim', null, 'Política de privacidade publicada no site.'),
(13, 2, 'Sim', null, 'Base legal de legítimo interesse documentada.'),
(13, 5, 'Não', 'Catastrófico', 'Sistema sem autenticação de acesso.'),

(16, 3, 'Sim', null, 'Termos exibidos no primeiro acesso.'),
(16, 6, 'Sim', null, 'Redundância de dados implementada.'),
(16, 8, 'Sim', null, 'DPO com canal público de contato.'),

(19, 1, 'Sim', null, 'Documento de finalidades revisado anualmente.'),
(19, 4, 'Sim', null, 'Tratamento revisado e em conformidade.'),
(19, 9, 'Sim', null, 'Credenciais individuais por colaborador.'),

(22, 2, 'Não', 'Grave', 'Base legal não definida para dados de localização.'),
(22, 5, 'Sim', null, 'Criptografia em repouso implementada.'),
(22, 10, 'Sim', null, 'Portas físicas auditadas e desativadas.'),

(25, 1, 'Sim', null, 'Política atualizada e publicada.'),
(25, 3, 'Sim', null, 'Informações acessíveis no portal do titular.'),
(25, 7, 'Não', 'Leve', 'Privacy by design ainda não formalizado.'),

(28, 4, 'Sim', null, 'Conformidade verificada em auditoria interna.'),
(28, 6, 'Sim', null, 'Plano de recuperação de desastres ativo.'),
(28, 11, 'Sim', null, 'Sala de servidores com acesso biométrico.'),

(31, 1, 'Sim', null, 'Finalidades claras no documento de uso.'),
(31, 2, 'Sim', null, 'Consentimento como base legal registrado.'),
(31, 8, 'Não', 'Grave', 'DPO não foi designado ainda.'),

(34, 3, 'Sim', null, 'Política visível antes da coleta de dados.'),
(34, 5, 'Sim', null, 'Controle de acesso por perfil implementado.'),
(34, 9, 'Sim', null, 'Senhas únicas por usuário exigidas.'),

(37, 1, 'Não', 'Catastrófico', 'Finalidades de tratamento não documentadas.'),
(37, 6, 'Sim', null, 'Backup em três regiões geográficas.'),
(37, 10, 'Sim', null, 'Auditoria de portas realizada.'),

(40, 2, 'Sim', null, 'Base legal de contrato documentada.'),
(40, 4, 'Sim', null, 'Dados usados apenas para fins declarados.'),
(40, 11, 'Não', 'Leve', 'Controle de acesso físico em revisão.');

-- Wearable checklists (2,5,8,11,14,17,20,23,26,29,32,35,38) → items 12-22
INSERT INTO checklist_items (checklist_id, item_id, answer, severity_degree, user_comment) VALUES
(2, 12, 'Sim', null, 'Duração do tratamento descrita na política.'),
(2, 14, 'Não', 'Grave', 'Consentimento não é solicitado de forma clara.'),
(2, 17, 'Sim', null, 'Dados minimizados ao essencial para a função.'),
(2, 19, 'Sim', null, 'Criptografia AES-256 aplicada a dados sensíveis.'),

(5, 13, 'Sim', null, 'Canal de requisição de dados disponível.'),
(5, 15, 'Sim', null, 'Log de consentimento armazenado com timestamp.'),
(5, 18, 'Não', 'Leve', 'Formato de exportação ainda não padronizado.'),
(5, 21, 'Sim', null, 'Senhas únicas por dispositivo configuradas.'),

(8, 12, 'Sim', null, 'Duração informada no termo de uso.'),
(8, 14, 'Sim', null, 'Checkbox de consentimento não vem pré-marcado.'),
(8, 16, 'Sim', null, 'Log de consentimento em banco de dados auditável.'),
(8, 22, 'Sim', null, 'DPO identificado publicamente no site.'),

(11, 13, 'Não', 'Grave', 'Titular não consegue acessar seus dados pelo app.'),
(11, 17, 'Sim', null, 'Apenas dados de atividade física coletados.'),
(11, 20, 'Sim', null, 'Dados de saúde criptografados em trânsito e repouso.'),
(11, 21, 'Não', 'Leve', 'Mesma senha padrão em todos os dispositivos.'),

(14, 14, 'Sim', null, 'Consentimento granular implementado.'),
(14, 15, 'Sim', null, 'Revogação de consentimento disponível no app.'),
(14, 18, 'Sim', null, 'Exportação em JSON implementada.'),
(14, 22, 'Sim', null, 'Informações do DPO na política de privacidade.'),

(17, 12, 'Não', 'Leve', 'Duração do tratamento não especificada nos termos.'),
(17, 16, 'Sim', null, 'Registro de consentimento auditável.'),
(17, 19, 'Sim', null, 'Camada extra de segurança para dados biométricos.'),
(17, 21, 'Sim', null, 'Gestão de senhas por cofre corporativo.'),

(20, 13, 'Sim', null, 'Portal de acesso a dados disponível 24h.'),
(20, 14, 'Sim', null, 'Fluxo de consentimento validado por DPO.'),
(20, 17, 'Sim', null, 'Minimização revisada em auditoria.'),
(20, 20, 'Não', 'Catastrófico', 'Dados de saúde trafegam sem criptografia.'),

(23, 15, 'Sim', null, 'Revogação de consentimento em dois cliques.'),
(23, 18, 'Sim', null, 'Portabilidade em CSV e JSON disponível.'),
(23, 22, 'Sim', null, 'DPO com contato público verificado.'),
(23, 21, 'Sim', null, 'Política de senha forte implementada.'),

(26, 12, 'Sim', null, 'Duração do tratamento revisada anualmente.'),
(26, 14, 'Não', 'Grave', 'Consentimento implícito ainda utilizado.'),
(26, 19, 'Sim', null, 'Medidas de segurança adequadas aos dados sensíveis.'),
(26, 20, 'Sim', null, 'TLS 1.3 ativo em todas as comunicações.'),

(29, 13, 'Sim', null, 'Dados acessíveis pelo painel do usuário.'),
(29, 16, 'Sim', null, 'Logs de consentimento retidos por 5 anos.'),
(29, 17, 'Sim', null, 'Coleta limitada ao necessário para o serviço.'),
(29, 22, 'Sim', null, 'DPO treinado e identificado.'),

(32, 14, 'Sim', null, 'Consentimento por opt-in implementado.'),
(32, 15, 'Sim', null, 'Revogação disponível no perfil do usuário.'),
(32, 18, 'Não', 'Leve', 'Exportação de dados em desenvolvimento.'),
(32, 21, 'Sim', null, 'Senhas geradas por algoritmo por dispositivo.'),

(35, 12, 'Sim', null, 'Termos de uso descrevem duração do tratamento.'),
(35, 17, 'Sim', null, 'Dados minimizados revisados por DPO.'),
(35, 19, 'Sim', null, 'Criptografia aplicada a dados de localização.'),
(35, 22, 'Não', 'Leve', 'Canal de contato do DPO em atualização.'),

(38, 13, 'Sim', null, 'Requisição de dados atendida em até 15 dias.'),
(38, 16, 'Sim', null, 'Consentimento registrado com hash verificável.'),
(38, 20, 'Sim', null, 'Dados de saúde isolados em ambiente seguro.'),
(38, 21, 'Sim', null, 'Política de senha forte auditada.');

-- Implantavel checklists (3,6,9,12,15,18,21,24,27,30,33,36,39) → items 23-33
INSERT INTO checklist_items (checklist_id, item_id, answer, severity_degree, user_comment) VALUES
(3, 23, 'Sim', null, 'Dados armazenados com precisão validada.'),
(3, 25, 'Não', 'Catastrófico', 'Mecanismo de revogação de consentimento ausente.'),
(3, 27, 'Sim', null, 'Exclusão de dados disponível mediante requisição.'),
(3, 31, 'Sim', null, 'Incidentes comunicados à ANPD em 48h.'),

(6, 24, 'Sim', null, 'Processo de atualização de dados implementado.'),
(6, 26, 'Não', 'Grave', 'Consentimento parental não verificado adequadamente.'),
(6, 29, 'Sim', null, 'Protocolo TLS 1.3 ativo.'),
(6, 33, 'Sim', null, 'Botão de reset protegido fisicamente.'),

(9, 23, 'Sim', null, 'Exatidão dos dados verificada em auditoria.'),
(9, 25, 'Sim', null, 'Revogação de consentimento em processo guiado.'),
(9, 28, 'Não', 'Grave', 'Firmware transmitido sem verificação de integridade.'),
(9, 32, 'Sim', null, 'Senha padrão alterada no primeiro uso.'),

(12, 24, 'Não', 'Leve', 'Processo de atualização de dados manual.'),
(12, 27, 'Sim', null, 'Exclusão permanente implementada e testada.'),
(12, 30, 'Sim', null, 'Comunicação de incidentes formalizada.'),
(12, 33, 'Sim', null, 'Reset protegido por autenticação biométrica.'),

(15, 23, 'Sim', null, 'Dados validados no momento da coleta.'),
(15, 26, 'Sim', null, 'Consentimento parental com verificação de documento.'),
(15, 29, 'Sim', null, 'TLS configurado e certificado válido.'),
(15, 31, 'Não', 'Grave', 'Protocolo de comunicação de incidentes incompleto.'),

(18, 25, 'Sim', null, 'Revogação acessível no aplicativo do paciente.'),
(18, 28, 'Sim', null, 'Atualização de firmware com assinatura digital.'),
(18, 30, 'Sim', null, 'Relatório de incidentes enviado à ANPD.'),
(18, 32, 'Sim', null, 'Senha única configurada na instalação.'),

(21, 23, 'Não', 'Leve', 'Processo de validação de dados em revisão.'),
(21, 27, 'Sim', null, 'Exclusão de dados funcional e auditada.'),
(21, 29, 'Sim', null, 'Comunicação criptografada em todos os canais.'),
(21, 33, 'Não', 'Catastrófico', 'Reset acessível sem autenticação.'),

(24, 24, 'Sim', null, 'Dados atualizados automaticamente pelo sistema.'),
(24, 26, 'Sim', null, 'Consentimento parental verificado no cadastro.'),
(24, 31, 'Sim', null, 'ANPD notificada dentro do prazo legal.'),
(24, 32, 'Sim', null, 'Senha padrão substituída no setup inicial.'),

(27, 25, 'Não', 'Grave', 'Mecanismo de revogação com falha intermitente.'),
(27, 28, 'Sim', null, 'Firmware atualizado via canal seguro.'),
(27, 30, 'Sim', null, 'Comunicação de incidentes documentada.'),
(27, 33, 'Sim', null, 'Acesso físico ao reset restrito.'),

(30, 23, 'Sim', null, 'Exatidão garantida por validação em tempo real.'),
(30, 27, 'Sim', null, 'Exclusão de dados com confirmação por e-mail.'),
(30, 29, 'Não', 'Grave', 'Protocolo TLS não configurado em canal legado.'),
(30, 32, 'Sim', null, 'Senha alterada e registrada no log de segurança.'),

(33, 24, 'Sim', null, 'Dados de saúde atualizados a cada leitura.'),
(33, 26, 'Sim', null, 'Consentimento parental em conformidade.'),
(33, 28, 'Sim', null, 'Canal seguro de atualização de firmware ativo.'),
(33, 31, 'Sim', null, 'Incidentes reportados dentro do prazo.'),

(36, 25, 'Sim', null, 'Revogação de consentimento testada e funcional.'),
(36, 27, 'Não', 'Leve', 'Exclusão ainda requer aprovação manual.'),
(36, 30, 'Sim', null, 'Processo de comunicação de incidentes certificado.'),
(36, 33, 'Sim', null, 'Blindagem no botão de reset instalada.'),

(39, 23, 'Sim', null, 'Exatidão dos dados garantida por checksum.'),
(39, 29, 'Sim', null, 'TLS 1.3 ativo e monitorado.'),
(39, 31, 'Não', 'Grave', 'Canal de comunicação com ANPD não estabelecido.'),
(39, 32, 'Sim', null, 'Autenticação forte exigida no primeiro acesso.');