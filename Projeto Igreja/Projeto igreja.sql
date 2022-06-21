CREATE TABLE imagens (
                codigo_da_imagem INT NOT NULL,
                nome VARCHAR(100) NOT NULL,
                descricao VARCHAR(200) NOT NULL,
                data_de_registro DATE NOT NULL,
                PRIMARY KEY (codigo_da_imagem)
);

ALTER TABLE imagens COMMENT 'Tabela que armazena as imagens.';

ALTER TABLE imagens MODIFY COLUMN codigo_da_imagem INTEGER COMMENT 'Código de cada imagem, PK da tabela.';

ALTER TABLE imagens MODIFY COLUMN nome VARCHAR(100) COMMENT 'Nome de cada imagem.';

ALTER TABLE imagens MODIFY COLUMN descricao VARCHAR(200) COMMENT 'Descrição de cada imagem.';

ALTER TABLE imagens MODIFY COLUMN data_de_registro DATE COMMENT 'Data do registro de cada imagem.';


CREATE TABLE registram (
                codigo_da_imagem INT NOT NULL,
                PRIMARY KEY (codigo_da_imagem)
);

ALTER TABLE registram MODIFY COLUMN codigo_da_imagem INTEGER COMMENT 'Código de cada imagem, PK da tabela.';


CREATE TABLE atendidos (
                codigo_da_comunidade INT NOT NULL,
                nome VARCHAR(100) NOT NULL,
                PRIMARY KEY (codigo_da_comunidade)
);

ALTER TABLE atendidos COMMENT 'Tabela que armazena os atendidos.';

ALTER TABLE atendidos MODIFY COLUMN codigo_da_comunidade INTEGER COMMENT 'Código único, PK da tabela.';

ALTER TABLE atendidos MODIFY COLUMN nome VARCHAR(100) COMMENT 'Nome dos atendidos.';


CREATE TABLE usam_2 (
                codigo_da_imagem INT NOT NULL,
                codigo_da_comunidade INT NOT NULL,
                PRIMARY KEY (codigo_da_imagem, codigo_da_comunidade)
);

ALTER TABLE usam_2 MODIFY COLUMN codigo_da_imagem INTEGER COMMENT 'Código de cada imagem, PK da tabela.';

ALTER TABLE usam_2 MODIFY COLUMN codigo_da_comunidade INTEGER COMMENT 'Código único, PK da tabela.';


CREATE TABLE antendidos_telefones (
                numero VARCHAR(11) NOT NULL,
                codigo_da_comunidade INT NOT NULL,
                tipo VARCHAR(50),
                PRIMARY KEY (numero, codigo_da_comunidade)
);

ALTER TABLE antendidos_telefones COMMENT 'Tabela que armazela o telefone dos atendidos.';

ALTER TABLE antendidos_telefones MODIFY COLUMN numero VARCHAR(11) COMMENT 'Número do telefone dos membros (possui DDD e número)';

ALTER TABLE antendidos_telefones MODIFY COLUMN codigo_da_comunidade INTEGER COMMENT 'Código único, PK da tabela.';

ALTER TABLE antendidos_telefones MODIFY COLUMN tipo VARCHAR(50) COMMENT 'Tipo do telefone.';


CREATE TABLE uf_1 (
                sigla CHAR(2) NOT NULL,
                nome VARCHAR(150) NOT NULL,
                PRIMARY KEY (sigla)
);

ALTER TABLE uf_1 COMMENT 'Tabela que armazena o UF.';

ALTER TABLE uf_1 MODIFY COLUMN sigla CHAR(2) COMMENT 'Sigla de cada estado, PK da tabela.';

ALTER TABLE uf_1 MODIFY COLUMN nome VARCHAR(150) COMMENT 'Nome do estado.';


CREATE TABLE bairro_1 (
                codigo INT NOT NULL,
                nome VARCHAR(150) NOT NULL,
                PRIMARY KEY (codigo)
);

ALTER TABLE bairro_1 COMMENT 'Tabela que armazena os bairros.';

ALTER TABLE bairro_1 MODIFY COLUMN codigo INTEGER COMMENT 'Código único, PK da tabela.';

ALTER TABLE bairro_1 MODIFY COLUMN nome VARCHAR(150) COMMENT 'Nome do bairro.';


CREATE TABLE cep_1 (
                cep CHAR(8) NOT NULL,
                PRIMARY KEY (cep)
);

ALTER TABLE cep_1 COMMENT 'Tabela que armazena os CEPs.';

ALTER TABLE cep_1 MODIFY COLUMN cep CHAR(8) COMMENT 'O CEP, PK da tabela.';


CREATE TABLE cidade_1 (
                codigo INT NOT NULL,
                nome VARCHAR(150) NOT NULL,
                PRIMARY KEY (codigo)
);

ALTER TABLE cidade_1 COMMENT 'Tabela que armazena as cidades.';

ALTER TABLE cidade_1 MODIFY COLUMN codigo INTEGER COMMENT 'Código único, PK da tabela.';

ALTER TABLE cidade_1 MODIFY COLUMN nome VARCHAR(150) COMMENT 'Nome da cidade.';


CREATE TABLE comunidades (
                codigo_da_comunidade INT NOT NULL,
                nome VARCHAR(100) NOT NULL,
                uf CHAR(2) NOT NULL,
                codigo_do_bairro INT NOT NULL,
                codigo_da_cidade INT NOT NULL,
                cep CHAR(8) NOT NULL,
                PRIMARY KEY (codigo_da_comunidade)
);

ALTER TABLE comunidades COMMENT 'Tabela que armazena os dados das comunidades.';

ALTER TABLE comunidades MODIFY COLUMN codigo_da_comunidade INTEGER COMMENT 'Código único de cada comunidade, PK da tabela.';

ALTER TABLE comunidades MODIFY COLUMN nome VARCHAR(100) COMMENT 'Nome de cada comunidade.';

ALTER TABLE comunidades MODIFY COLUMN uf CHAR(2) COMMENT 'FK da tabela uf_1.';

ALTER TABLE comunidades MODIFY COLUMN codigo_do_bairro INTEGER COMMENT 'FK da tabela bairro_1.';

ALTER TABLE comunidades MODIFY COLUMN codigo_da_cidade INTEGER COMMENT 'FK da tabela cidade_1.';

ALTER TABLE comunidades MODIFY COLUMN cep CHAR(8) COMMENT 'FK da tabela cep_1.';


CREATE TABLE usam_1 (
                codigo_da_comunidade INT NOT NULL,
                codigo_da_imagem INT NOT NULL,
                PRIMARY KEY (codigo_da_comunidade, codigo_da_imagem)
);

ALTER TABLE usam_1 MODIFY COLUMN codigo_da_comunidade INTEGER COMMENT 'Código único de cada comunidade, PK da tabela.';

ALTER TABLE usam_1 MODIFY COLUMN codigo_da_imagem INTEGER COMMENT 'Código de cada imagem, PK da tabela.';


CREATE TABLE cadastram (
                codigo_da_comunidade INT NOT NULL,
                PRIMARY KEY (codigo_da_comunidade)
);

ALTER TABLE cadastram MODIFY COLUMN codigo_da_comunidade INTEGER COMMENT 'Código único de cada comunidade, PK da tabela.';


CREATE TABLE comunidade_emails (
                codigo_da_comunidade INT NOT NULL,
                email VARCHAR(150),
                tipo VARCHAR(50),
                PRIMARY KEY (codigo_da_comunidade)
);

ALTER TABLE comunidade_emails COMMENT 'Tabela com os emails de cada comunidade';

ALTER TABLE comunidade_emails MODIFY COLUMN codigo_da_comunidade INTEGER COMMENT 'Código único de cada comunidade, PK da tabela.';

ALTER TABLE comunidade_emails MODIFY COLUMN email VARCHAR(150) COMMENT 'Email de cada comunidade.';

ALTER TABLE comunidade_emails MODIFY COLUMN tipo VARCHAR(50) COMMENT 'Tipo de cada e-mail.';


CREATE TABLE comunidades_telefones (
                numero VARCHAR(11) NOT NULL,
                codigo_da_comunidade INT NOT NULL,
                tipo VARCHAR(50),
                PRIMARY KEY (numero, codigo_da_comunidade)
);

ALTER TABLE comunidades_telefones COMMENT 'Tabela que armazela o telefone das comunidades.';

ALTER TABLE comunidades_telefones MODIFY COLUMN numero VARCHAR(11) COMMENT 'Número do telefone dos membros (possui DDD e número)';

ALTER TABLE comunidades_telefones MODIFY COLUMN codigo_da_comunidade INTEGER COMMENT 'Código único de cada comunidade, PK da tabela.';

ALTER TABLE comunidades_telefones MODIFY COLUMN tipo VARCHAR(50) COMMENT 'Tipo do telefone.';


CREATE TABLE cep (
                cep CHAR(8) NOT NULL,
                PRIMARY KEY (cep)
);

ALTER TABLE cep COMMENT 'Tabela que armazena os CEPs.';

ALTER TABLE cep MODIFY COLUMN cep CHAR(8) COMMENT 'O CEP, PK da tabela.';


CREATE TABLE uf (
                uf CHAR(2) NOT NULL,
                nome VARCHAR(150) NOT NULL,
                PRIMARY KEY (uf)
);

ALTER TABLE uf COMMENT 'Tabela que armazena o UF.';

ALTER TABLE uf MODIFY COLUMN uf CHAR(2) COMMENT 'Sigla de cada estado, PK da tabela.';

ALTER TABLE uf MODIFY COLUMN nome VARCHAR(150) COMMENT 'Nome do estado.';


CREATE TABLE cidade (
                codigo INT NOT NULL,
                nome VARCHAR(150) NOT NULL,
                uf CHAR(2) NOT NULL,
                PRIMARY KEY (codigo)
);

ALTER TABLE cidade COMMENT 'Tabela que armazena as cidades.';

ALTER TABLE cidade MODIFY COLUMN codigo INTEGER COMMENT 'Código único, PK da tabela.';

ALTER TABLE cidade MODIFY COLUMN nome VARCHAR(150) COMMENT 'Nome da cidade.';

ALTER TABLE cidade MODIFY COLUMN uf CHAR(2) COMMENT 'Sigla de cada estado, PK da tabela.';


CREATE TABLE bairro (
                codigo INT NOT NULL,
                nome VARCHAR(150) NOT NULL,
                PRIMARY KEY (codigo)
);

ALTER TABLE bairro COMMENT 'Tabela que armazena os bairros.';

ALTER TABLE bairro MODIFY COLUMN codigo INTEGER COMMENT 'Código único, PK da tabela.';

ALTER TABLE bairro MODIFY COLUMN nome VARCHAR(150) COMMENT 'Nome do bairro.';


CREATE TABLE membros (
                codigo_do_membro INT NOT NULL,
                nome VARCHAR(100) NOT NULL,
                cep CHAR(8) NOT NULL,
                numero_endereco VARCHAR(10),
                complemento_endereco VARCHAR(20),
                codigo_bairro INT NOT NULL,
                logradouro VARCHAR(250),
                codigo_da_cidade INT,
                profissao VARCHAR(30),
                data_de_nascimento DATE NOT NULL,
                sexo VARCHAR(1) NOT NULL,
                estado_civil VARCHAR(1) NOT NULL,
                uf CHAR(2) NOT NULL,
                codigo_colaborador INT NOT NULL,
                PRIMARY KEY (codigo_do_membro)
);

ALTER TABLE membros COMMENT 'Tabela que Armazena o cadastro dos membros.';

ALTER TABLE membros MODIFY COLUMN codigo_do_membro INTEGER COMMENT 'Código unico de cada membro, PK da tabela.';

ALTER TABLE membros MODIFY COLUMN nome VARCHAR(100) COMMENT 'Nome dos membros.';

ALTER TABLE membros MODIFY COLUMN cep CHAR(8) COMMENT 'FK para a tabela cep.';

ALTER TABLE membros MODIFY COLUMN numero_endereco VARCHAR(10) COMMENT 'Número do endereço.';

ALTER TABLE membros MODIFY COLUMN complemento_endereco VARCHAR(20) COMMENT 'Complemento do endereço.';

ALTER TABLE membros MODIFY COLUMN codigo_bairro INTEGER COMMENT 'FK para a tabela bairro.';

ALTER TABLE membros MODIFY COLUMN logradouro VARCHAR(250) COMMENT 'Localização mais específica.';

ALTER TABLE membros MODIFY COLUMN codigo_da_cidade INTEGER COMMENT 'FK para a tabela cidade.';

ALTER TABLE membros MODIFY COLUMN profissao VARCHAR(30) COMMENT 'Profissão do membro.';

ALTER TABLE membros MODIFY COLUMN data_de_nascimento DATE COMMENT 'Data de nascimento de cada membro.';

ALTER TABLE membros MODIFY COLUMN sexo VARCHAR(1) COMMENT 'Sexo de cada membro, masculino(M) ou Feminino(F).';

ALTER TABLE membros MODIFY COLUMN estado_civil VARCHAR(1) COMMENT 'Estado civil do membro, solteiro(S) ou casado(C).';

ALTER TABLE membros MODIFY COLUMN uf CHAR(2) COMMENT 'FK para a tabela uf.';

ALTER TABLE membros MODIFY COLUMN codigo_colaborador INTEGER COMMENT 'FK para a tabela colaboram.';


CREATE TABLE colaboram (
                codigo_colaborador INT NOT NULL,
                codigo_do_membro INT NOT NULL,
                PRIMARY KEY (codigo_colaborador)
);

ALTER TABLE colaboram COMMENT 'Tabela que armazena os membros que colaboram.';

ALTER TABLE colaboram MODIFY COLUMN codigo_colaborador INTEGER COMMENT 'Código único, PK da tabela.';

ALTER TABLE colaboram MODIFY COLUMN codigo_do_membro INTEGER COMMENT 'FK para a tabela membros.';


CREATE TABLE doacoes (
                codigo_da_doacao INT NOT NULL,
                nome VARCHAR(100) NOT NULL,
                data_da_doacao DATE NOT NULL,
                identificacao_do_doador INT,
                cdigo_do_membro INT NOT NULL,
                PRIMARY KEY (codigo_da_doacao)
);

ALTER TABLE doacoes COMMENT 'Tabela que armazena as doações.';

ALTER TABLE doacoes MODIFY COLUMN codigo_da_doacao INTEGER COMMENT 'Codigo único de cada doação, PK da tabela.';

ALTER TABLE doacoes MODIFY COLUMN nome VARCHAR(100) COMMENT 'Nome.';

ALTER TABLE doacoes MODIFY COLUMN data_da_doacao DATE COMMENT 'Data da doação.';

ALTER TABLE doacoes MODIFY COLUMN identificacao_do_doador INTEGER COMMENT 'Série numeral que identifica o doador.';

ALTER TABLE doacoes MODIFY COLUMN cdigo_do_membro INTEGER COMMENT 'FK para a tabela membros.';


CREATE TABLE destinacoes (
                codigo_da_doacao INT NOT NULL,
                codigo_da_imagem INT NOT NULL,
                codigo_da_comunidade INT NOT NULL,
                data DATE NOT NULL,
                observacoes VARCHAR(100),
                recebedor VARCHAR(100) NOT NULL,
                PRIMARY KEY (codigo_da_doacao, codigo_da_imagem, codigo_da_comunidade)
);

ALTER TABLE destinacoes COMMENT 'Tabela que armazena as destinações.';

ALTER TABLE destinacoes MODIFY COLUMN codigo_da_doacao INTEGER COMMENT 'Codigo único de cada doação, PK da tabela.';

ALTER TABLE destinacoes MODIFY COLUMN codigo_da_imagem INTEGER COMMENT 'Código de cada imagem, PK da tabela.';

ALTER TABLE destinacoes MODIFY COLUMN codigo_da_comunidade INTEGER COMMENT 'Código único, PK da tabela.';

ALTER TABLE destinacoes MODIFY COLUMN data DATE COMMENT 'Data da destinação.';

ALTER TABLE destinacoes MODIFY COLUMN observacoes VARCHAR(100) COMMENT 'Observações das destinações.';


CREATE TABLE trabalhos (
                codigo_da_doacao INT NOT NULL,
                nome_do_doador VARCHAR(100) NOT NULL,
                tipo_de_trabalho VARCHAR(50) NOT NULL,
                PRIMARY KEY (codigo_da_doacao)
);

ALTER TABLE trabalhos COMMENT 'Tabela que contém os tipos de trabalhos doados.';

ALTER TABLE trabalhos MODIFY COLUMN codigo_da_doacao INTEGER COMMENT 'Codigo único, PK da tabela.';

ALTER TABLE trabalhos MODIFY COLUMN nome_do_doador VARCHAR(100) COMMENT 'Nome do doador.';

ALTER TABLE trabalhos MODIFY COLUMN tipo_de_trabalho VARCHAR(50) COMMENT 'Tipo de trabalho prestado.';


CREATE TABLE disponibilidade (
                codigo_da_doacao INT NOT NULL,
                dias_de_disponibilidade DATE NOT NULL,
                horarios TIME NOT NULL,
                PRIMARY KEY (codigo_da_doacao)
);

ALTER TABLE disponibilidade COMMENT 'Tabela que contém os dias e os horários disponíveis.';

ALTER TABLE disponibilidade MODIFY COLUMN codigo_da_doacao INTEGER COMMENT 'Codigo unico da doacao. Pk da tabela.';

ALTER TABLE disponibilidade MODIFY COLUMN dias_de_disponibilidade DATE COMMENT 'Dias de disponibilidade';

ALTER TABLE disponibilidade MODIFY COLUMN horarios TIME COMMENT 'Horarios disponiveis.';


CREATE TABLE bens (
                codigo_da_doacao INT NOT NULL,
                descricao VARCHAR(500),
                tipo VARCHAR(30) NOT NULL,
                PRIMARY KEY (codigo_da_doacao)
);

ALTER TABLE bens COMMENT 'Tabela que armazena os bens doados.';

ALTER TABLE bens MODIFY COLUMN codigo_da_doacao INTEGER COMMENT 'Codigo único, PK da tabela.';

ALTER TABLE bens MODIFY COLUMN descricao VARCHAR(500) COMMENT 'Descricao do tipo de bem.';

ALTER TABLE bens MODIFY COLUMN tipo VARCHAR(30) COMMENT 'Tipo dos bens doados.';


CREATE TABLE monetarios (
                codigo_da_doacao INT NOT NULL,
                valor INT NOT NULL,
                tipo_de_moeda VARCHAR(5),
                PRIMARY KEY (codigo_da_doacao)
);

ALTER TABLE monetarios COMMENT 'Tabela que armazena as doações monetárias.';

ALTER TABLE monetarios MODIFY COLUMN codigo_da_doacao INTEGER COMMENT 'Codigo único, PK da tabela.';

ALTER TABLE monetarios MODIFY COLUMN valor INTEGER COMMENT 'Valor doado.';

ALTER TABLE monetarios MODIFY COLUMN tipo_de_moeda VARCHAR(5) COMMENT 'Tipo de moeda (dólar ou real).';


CREATE TABLE programas (
                codigo_do_programa INT NOT NULL,
                nome VARCHAR(100) NOT NULL,
                descricao VARCHAR(100) NOT NULL,
                objetivos VARCHAR(150) NOT NULL,
                cdigo_do_membro INT NOT NULL,
                data_de_inicio DATE NOT NULL,
                data_final_prevista DATE,
                PRIMARY KEY (codigo_do_programa)
);

ALTER TABLE programas COMMENT 'Tabela que armazena os programas da igreja.';

ALTER TABLE programas MODIFY COLUMN codigo_do_programa INTEGER COMMENT 'Código único de cada programa, PK da tabela.';

ALTER TABLE programas MODIFY COLUMN nome VARCHAR(100) COMMENT 'Nome de cada programa.';

ALTER TABLE programas MODIFY COLUMN descricao VARCHAR(100) COMMENT 'Descrição de cada programa.';

ALTER TABLE programas MODIFY COLUMN objetivos VARCHAR(150) COMMENT 'Objetivos de cada programa.';

ALTER TABLE programas MODIFY COLUMN cdigo_do_membro INTEGER COMMENT 'FK para a tabela membros.';

ALTER TABLE programas MODIFY COLUMN data_de_inicio DATE COMMENT 'Data de ínicio do programa.';

ALTER TABLE programas MODIFY COLUMN data_final_prevista DATE COMMENT 'Data final prevista do programa.';


CREATE TABLE desenvolvem (
                codigo_do_programa INT NOT NULL,
                codigo_da_comunidade INT NOT NULL,
                PRIMARY KEY (codigo_do_programa, codigo_da_comunidade)
);

ALTER TABLE desenvolvem MODIFY COLUMN codigo_do_programa INTEGER COMMENT 'Código único de cada programa, PK da tabela.';

ALTER TABLE desenvolvem MODIFY COLUMN codigo_da_comunidade INTEGER COMMENT 'Código único de cada comunidade, PK da tabela.';


CREATE TABLE usam (
                codigo_do_programa INT NOT NULL,
                codigo_da_imagem INT NOT NULL,
                PRIMARY KEY (codigo_do_programa, codigo_da_imagem)
);

ALTER TABLE usam MODIFY COLUMN codigo_do_programa INTEGER COMMENT 'Código único de cada programa, PK da tabela.';

ALTER TABLE usam MODIFY COLUMN codigo_da_imagem INTEGER COMMENT 'Código de cada imagem, PK da tabela.';


CREATE TABLE membros_telefones (
                cdigo_do_membro INT NOT NULL,
                numero VARCHAR(11) NOT NULL,
                tipo VARCHAR(50),
                PRIMARY KEY (cdigo_do_membro, numero)
);

ALTER TABLE membros_telefones COMMENT 'Tabela que armazela o telefone dos membros.';

ALTER TABLE membros_telefones MODIFY COLUMN cdigo_do_membro INTEGER COMMENT 'Código unico de cada membro, PK da tabela.';

ALTER TABLE membros_telefones MODIFY COLUMN numero VARCHAR(11) COMMENT 'Número do telefone dos membros (possui DDD e número)';

ALTER TABLE membros_telefones MODIFY COLUMN tipo VARCHAR(50) COMMENT 'Tipo do telefone.';


ALTER TABLE usam ADD CONSTRAINT imagens_usam_fk
FOREIGN KEY (codigo_da_imagem)
REFERENCES imagens (codigo_da_imagem)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE usam_1 ADD CONSTRAINT imagens_usam_fk1
FOREIGN KEY (codigo_da_imagem)
REFERENCES imagens (codigo_da_imagem)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE usam_2 ADD CONSTRAINT imagens_usam_fk2
FOREIGN KEY (codigo_da_imagem)
REFERENCES imagens (codigo_da_imagem)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE registram ADD CONSTRAINT imagens_registram_fk
FOREIGN KEY (codigo_da_imagem)
REFERENCES imagens (codigo_da_imagem)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE destinacoes ADD CONSTRAINT registram_destinacoes_fk
FOREIGN KEY (codigo_da_imagem)
REFERENCES registram (codigo_da_imagem)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE antendidos_telefones ADD CONSTRAINT atendidos_antendidos_telefones_fk
FOREIGN KEY (codigo_da_comunidade)
REFERENCES atendidos (codigo_da_comunidade)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE cadastram ADD CONSTRAINT atendidos_cadastram_fk
FOREIGN KEY (codigo_da_comunidade)
REFERENCES atendidos (codigo_da_comunidade)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE usam_2 ADD CONSTRAINT atendidos_usam_fk
FOREIGN KEY (codigo_da_comunidade)
REFERENCES atendidos (codigo_da_comunidade)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE destinacoes ADD CONSTRAINT atendidos_destinacoes_fk
FOREIGN KEY (codigo_da_comunidade)
REFERENCES atendidos (codigo_da_comunidade)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE comunidades ADD CONSTRAINT uf_1_comunidades_fk
FOREIGN KEY (uf)
REFERENCES uf_1 (sigla)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE comunidades ADD CONSTRAINT bairro_1_comunidades_fk
FOREIGN KEY (codigo_do_bairro)
REFERENCES bairro_1 (codigo)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE comunidades ADD CONSTRAINT cep_1_comunidades_fk
FOREIGN KEY (cep)
REFERENCES cep_1 (cep)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE comunidades ADD CONSTRAINT cidade_1_comunidades_fk
FOREIGN KEY (codigo_da_cidade)
REFERENCES cidade_1 (codigo)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE comunidades_telefones ADD CONSTRAINT comunidades_comunidades_telefones_fk
FOREIGN KEY (codigo_da_comunidade)
REFERENCES comunidades (codigo_da_comunidade)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE comunidade_emails ADD CONSTRAINT comunidades_comunidade_emails_fk
FOREIGN KEY (codigo_da_comunidade)
REFERENCES comunidades (codigo_da_comunidade)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE desenvolvem ADD CONSTRAINT comunidades_desenvolvem_fk
FOREIGN KEY (codigo_da_comunidade)
REFERENCES comunidades (codigo_da_comunidade)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE cadastram ADD CONSTRAINT comunidades_cadastram_fk
FOREIGN KEY (codigo_da_comunidade)
REFERENCES comunidades (codigo_da_comunidade)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE usam_1 ADD CONSTRAINT comunidades_usam_fk
FOREIGN KEY (codigo_da_comunidade)
REFERENCES comunidades (codigo_da_comunidade)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE membros ADD CONSTRAINT cep_membros_fk
FOREIGN KEY (cep)
REFERENCES cep (cep)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE membros ADD CONSTRAINT uf_membros_fk
FOREIGN KEY (uf)
REFERENCES uf (uf)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE cidade ADD CONSTRAINT uf_cidade_fk
FOREIGN KEY (uf)
REFERENCES uf (uf)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE membros ADD CONSTRAINT cidade_membros_fk
FOREIGN KEY (codigo_da_cidade)
REFERENCES cidade (codigo)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE bairro ADD CONSTRAINT cidade_bairro_fk
FOREIGN KEY (codigo)
REFERENCES cidade (codigo)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE membros ADD CONSTRAINT bairro_membros_fk
FOREIGN KEY (codigo_bairro)
REFERENCES bairro (codigo)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE membros_telefones ADD CONSTRAINT membros_membros_telefones_fk
FOREIGN KEY (cdigo_do_membro)
REFERENCES membros (codigo_do_membro)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE programas ADD CONSTRAINT membros_programas_fk
FOREIGN KEY (cdigo_do_membro)
REFERENCES membros (codigo_do_membro)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE doacoes ADD CONSTRAINT membros_doacoes_fk
FOREIGN KEY (cdigo_do_membro)
REFERENCES membros (codigo_do_membro)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE colaboram ADD CONSTRAINT membros_colaboram_fk
FOREIGN KEY (codigo_do_membro)
REFERENCES membros (codigo_do_membro)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE membros ADD CONSTRAINT colaboram_membros_fk
FOREIGN KEY (codigo_colaborador)
REFERENCES colaboram (codigo_colaborador)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE monetarios ADD CONSTRAINT doacoes_monetarios_fk
FOREIGN KEY (codigo_da_doacao)
REFERENCES doacoes (codigo_da_doacao)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE bens ADD CONSTRAINT doacoes_bens_fk
FOREIGN KEY (codigo_da_doacao)
REFERENCES doacoes (codigo_da_doacao)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE trabalhos ADD CONSTRAINT doacoes_trabalhos_fk
FOREIGN KEY (codigo_da_doacao)
REFERENCES doacoes (codigo_da_doacao)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE destinacoes ADD CONSTRAINT doacoes_destinacoes_fk
FOREIGN KEY (codigo_da_doacao)
REFERENCES doacoes (codigo_da_doacao)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE disponibilidade ADD CONSTRAINT trabalhos_disponibilidade_fk
FOREIGN KEY (codigo_da_doacao)
REFERENCES trabalhos (codigo_da_doacao)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE usam ADD CONSTRAINT programas_usam_fk
FOREIGN KEY (codigo_do_programa)
REFERENCES programas (codigo_do_programa)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE desenvolvem ADD CONSTRAINT programas_desenvolvem_fk
FOREIGN KEY (codigo_do_programa)
REFERENCES programas (codigo_do_programa)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE membros 
ADD CONSTRAINT ck_sexo
CHECK (sexo in ('F', 'M'));CREATE TABLE imagens (
                codigo_da_imagem INT NOT NULL,
                nome VARCHAR(100) NOT NULL,
                descricao VARCHAR(200) NOT NULL,
                data_de_registro DATE NOT NULL,
                PRIMARY KEY (codigo_da_imagem)
);

ALTER TABLE imagens COMMENT 'Tabela que armazena as imagens.';

ALTER TABLE imagens MODIFY COLUMN codigo_da_imagem INTEGER COMMENT 'Código de cada imagem, PK da tabela.';

ALTER TABLE imagens MODIFY COLUMN nome VARCHAR(100) COMMENT 'Nome de cada imagem.';

ALTER TABLE imagens MODIFY COLUMN descricao VARCHAR(200) COMMENT 'Descrição de cada imagem.';

ALTER TABLE imagens MODIFY COLUMN data_de_registro DATE COMMENT 'Data do registro de cada imagem.';


CREATE TABLE registram (
                codigo_da_imagem INT NOT NULL,
                PRIMARY KEY (codigo_da_imagem)
);

ALTER TABLE registram MODIFY COLUMN codigo_da_imagem INTEGER COMMENT 'Código de cada imagem, PK da tabela.';


CREATE TABLE atendidos (
                codigo_da_comunidade INT NOT NULL,
                nome VARCHAR(100) NOT NULL,
                PRIMARY KEY (codigo_da_comunidade)
);

ALTER TABLE atendidos COMMENT 'Tabela que armazena os atendidos.';

ALTER TABLE atendidos MODIFY COLUMN codigo_da_comunidade INTEGER COMMENT 'Código único, PK da tabela.';

ALTER TABLE atendidos MODIFY COLUMN nome VARCHAR(100) COMMENT 'Nome dos atendidos.';


CREATE TABLE usam_2 (
                codigo_da_imagem INT NOT NULL,
                codigo_da_comunidade INT NOT NULL,
                PRIMARY KEY (codigo_da_imagem, codigo_da_comunidade)
);

ALTER TABLE usam_2 MODIFY COLUMN codigo_da_imagem INTEGER COMMENT 'Código de cada imagem, PK da tabela.';

ALTER TABLE usam_2 MODIFY COLUMN codigo_da_comunidade INTEGER COMMENT 'Código único, PK da tabela.';


CREATE TABLE antendidos_telefones (
                numero VARCHAR(11) NOT NULL,
                codigo_da_comunidade INT NOT NULL,
                tipo VARCHAR(50),
                PRIMARY KEY (numero, codigo_da_comunidade)
);

ALTER TABLE antendidos_telefones COMMENT 'Tabela que armazela o telefone dos atendidos.';

ALTER TABLE antendidos_telefones MODIFY COLUMN numero VARCHAR(11) COMMENT 'Número do telefone dos membros (possui DDD e número)';

ALTER TABLE antendidos_telefones MODIFY COLUMN codigo_da_comunidade INTEGER COMMENT 'Código único, PK da tabela.';

ALTER TABLE antendidos_telefones MODIFY COLUMN tipo VARCHAR(50) COMMENT 'Tipo do telefone.';


CREATE TABLE uf_1 (
                sigla CHAR(2) NOT NULL,
                nome VARCHAR(150) NOT NULL,
                PRIMARY KEY (sigla)
);

ALTER TABLE uf_1 COMMENT 'Tabela que armazena o UF.';

ALTER TABLE uf_1 MODIFY COLUMN sigla CHAR(2) COMMENT 'Sigla de cada estado, PK da tabela.';

ALTER TABLE uf_1 MODIFY COLUMN nome VARCHAR(150) COMMENT 'Nome do estado.';


CREATE TABLE bairro_1 (
                codigo INT NOT NULL,
                nome VARCHAR(150) NOT NULL,
                PRIMARY KEY (codigo)
);

ALTER TABLE bairro_1 COMMENT 'Tabela que armazena os bairros.';

ALTER TABLE bairro_1 MODIFY COLUMN codigo INTEGER COMMENT 'Código único, PK da tabela.';

ALTER TABLE bairro_1 MODIFY COLUMN nome VARCHAR(150) COMMENT 'Nome do bairro.';


CREATE TABLE cep_1 (
                cep CHAR(8) NOT NULL,
                PRIMARY KEY (cep)
);

ALTER TABLE cep_1 COMMENT 'Tabela que armazena os CEPs.';

ALTER TABLE cep_1 MODIFY COLUMN cep CHAR(8) COMMENT 'O CEP, PK da tabela.';


CREATE TABLE cidade_1 (
                codigo INT NOT NULL,
                nome VARCHAR(150) NOT NULL,
                PRIMARY KEY (codigo)
);

ALTER TABLE cidade_1 COMMENT 'Tabela que armazena as cidades.';

ALTER TABLE cidade_1 MODIFY COLUMN codigo INTEGER COMMENT 'Código único, PK da tabela.';

ALTER TABLE cidade_1 MODIFY COLUMN nome VARCHAR(150) COMMENT 'Nome da cidade.';


CREATE TABLE comunidades (
                codigo_da_comunidade INT NOT NULL,
                nome VARCHAR(100) NOT NULL,
                uf CHAR(2) NOT NULL,
                codigo_do_bairro INT NOT NULL,
                codigo_da_cidade INT NOT NULL,
                cep CHAR(8) NOT NULL,
                PRIMARY KEY (codigo_da_comunidade)
);

ALTER TABLE comunidades COMMENT 'Tabela que armazena os dados das comunidades.';

ALTER TABLE comunidades MODIFY COLUMN codigo_da_comunidade INTEGER COMMENT 'Código único de cada comunidade, PK da tabela.';

ALTER TABLE comunidades MODIFY COLUMN nome VARCHAR(100) COMMENT 'Nome de cada comunidade.';

ALTER TABLE comunidades MODIFY COLUMN uf CHAR(2) COMMENT 'FK da tabela uf_1.';

ALTER TABLE comunidades MODIFY COLUMN codigo_do_bairro INTEGER COMMENT 'FK da tabela bairro_1.';

ALTER TABLE comunidades MODIFY COLUMN codigo_da_cidade INTEGER COMMENT 'FK da tabela cidade_1.';

ALTER TABLE comunidades MODIFY COLUMN cep CHAR(8) COMMENT 'FK da tabela cep_1.';


CREATE TABLE usam_1 (
                codigo_da_comunidade INT NOT NULL,
                codigo_da_imagem INT NOT NULL,
                PRIMARY KEY (codigo_da_comunidade, codigo_da_imagem)
);

ALTER TABLE usam_1 MODIFY COLUMN codigo_da_comunidade INTEGER COMMENT 'Código único de cada comunidade, PK da tabela.';

ALTER TABLE usam_1 MODIFY COLUMN codigo_da_imagem INTEGER COMMENT 'Código de cada imagem, PK da tabela.';


CREATE TABLE cadastram (
                codigo_da_comunidade INT NOT NULL,
                PRIMARY KEY (codigo_da_comunidade)
);

ALTER TABLE cadastram MODIFY COLUMN codigo_da_comunidade INTEGER COMMENT 'Código único de cada comunidade, PK da tabela.';


CREATE TABLE comunidade_emails (
                codigo_da_comunidade INT NOT NULL,
                email VARCHAR(150),
                tipo VARCHAR(50),
                PRIMARY KEY (codigo_da_comunidade)
);

ALTER TABLE comunidade_emails COMMENT 'Tabela com os emails de cada comunidade';

ALTER TABLE comunidade_emails MODIFY COLUMN codigo_da_comunidade INTEGER COMMENT 'Código único de cada comunidade, PK da tabela.';

ALTER TABLE comunidade_emails MODIFY COLUMN email VARCHAR(150) COMMENT 'Email de cada comunidade.';

ALTER TABLE comunidade_emails MODIFY COLUMN tipo VARCHAR(50) COMMENT 'Tipo de cada e-mail.';


CREATE TABLE comunidades_telefones (
                numero VARCHAR(11) NOT NULL,
                codigo_da_comunidade INT NOT NULL,
                tipo VARCHAR(50),
                PRIMARY KEY (numero, codigo_da_comunidade)
);

ALTER TABLE comunidades_telefones COMMENT 'Tabela que armazela o telefone das comunidades.';

ALTER TABLE comunidades_telefones MODIFY COLUMN numero VARCHAR(11) COMMENT 'Número do telefone dos membros (possui DDD e número)';

ALTER TABLE comunidades_telefones MODIFY COLUMN codigo_da_comunidade INTEGER COMMENT 'Código único de cada comunidade, PK da tabela.';

ALTER TABLE comunidades_telefones MODIFY COLUMN tipo VARCHAR(50) COMMENT 'Tipo do telefone.';


CREATE TABLE cep (
                cep CHAR(8) NOT NULL,
                PRIMARY KEY (cep)
);

ALTER TABLE cep COMMENT 'Tabela que armazena os CEPs.';

ALTER TABLE cep MODIFY COLUMN cep CHAR(8) COMMENT 'O CEP, PK da tabela.';


CREATE TABLE uf (
                uf CHAR(2) NOT NULL,
                nome VARCHAR(150) NOT NULL,
                PRIMARY KEY (uf)
);

ALTER TABLE uf COMMENT 'Tabela que armazena o UF.';

ALTER TABLE uf MODIFY COLUMN uf CHAR(2) COMMENT 'Sigla de cada estado, PK da tabela.';

ALTER TABLE uf MODIFY COLUMN nome VARCHAR(150) COMMENT 'Nome do estado.';


CREATE TABLE cidade (
                codigo INT NOT NULL,
                nome VARCHAR(150) NOT NULL,
                uf CHAR(2) NOT NULL,
                PRIMARY KEY (codigo)
);

ALTER TABLE cidade COMMENT 'Tabela que armazena as cidades.';

ALTER TABLE cidade MODIFY COLUMN codigo INTEGER COMMENT 'Código único, PK da tabela.';

ALTER TABLE cidade MODIFY COLUMN nome VARCHAR(150) COMMENT 'Nome da cidade.';

ALTER TABLE cidade MODIFY COLUMN uf CHAR(2) COMMENT 'Sigla de cada estado, PK da tabela.';


CREATE TABLE bairro (
                codigo INT NOT NULL,
                nome VARCHAR(150) NOT NULL,
                PRIMARY KEY (codigo)
);

ALTER TABLE bairro COMMENT 'Tabela que armazena os bairros.';

ALTER TABLE bairro MODIFY COLUMN codigo INTEGER COMMENT 'Código único, PK da tabela.';

ALTER TABLE bairro MODIFY COLUMN nome VARCHAR(150) COMMENT 'Nome do bairro.';


CREATE TABLE membros (
                codigo_do_membro INT NOT NULL,
                nome VARCHAR(100) NOT NULL,
                cep CHAR(8) NOT NULL,
                numero_endereco VARCHAR(10),
                complemento_endereco VARCHAR(20),
                codigo_bairro INT NOT NULL,
                logradouro VARCHAR(250),
                codigo_da_cidade INT,
                profissao VARCHAR(30),
                data_de_nascimento DATE NOT NULL,
                sexo VARCHAR(1) NOT NULL,
                estado_civil VARCHAR(1) NOT NULL,
                uf CHAR(2) NOT NULL,
                codigo_colaborador INT NOT NULL,
                PRIMARY KEY (codigo_do_membro)
);

ALTER TABLE membros COMMENT 'Tabela que Armazena o cadastro dos membros.';

ALTER TABLE membros MODIFY COLUMN codigo_do_membro INTEGER COMMENT 'Código unico de cada membro, PK da tabela.';

ALTER TABLE membros MODIFY COLUMN nome VARCHAR(100) COMMENT 'Nome dos membros.';

ALTER TABLE membros MODIFY COLUMN cep CHAR(8) COMMENT 'FK para a tabela cep.';

ALTER TABLE membros MODIFY COLUMN numero_endereco VARCHAR(10) COMMENT 'Número do endereço.';

ALTER TABLE membros MODIFY COLUMN complemento_endereco VARCHAR(20) COMMENT 'Complemento do endereço.';

ALTER TABLE membros MODIFY COLUMN codigo_bairro INTEGER COMMENT 'FK para a tabela bairro.';

ALTER TABLE membros MODIFY COLUMN logradouro VARCHAR(250) COMMENT 'Localização mais específica.';

ALTER TABLE membros MODIFY COLUMN codigo_da_cidade INTEGER COMMENT 'FK para a tabela cidade.';

ALTER TABLE membros MODIFY COLUMN profissao VARCHAR(30) COMMENT 'Profissão do membro.';

ALTER TABLE membros MODIFY COLUMN data_de_nascimento DATE COMMENT 'Data de nascimento de cada membro.';

ALTER TABLE membros MODIFY COLUMN sexo VARCHAR(1) COMMENT 'Sexo de cada membro, masculino(M) ou Feminino(F).';

ALTER TABLE membros MODIFY COLUMN estado_civil VARCHAR(1) COMMENT 'Estado civil do membro, solteiro(S) ou casado(C).';

ALTER TABLE membros MODIFY COLUMN uf CHAR(2) COMMENT 'FK para a tabela uf.';

ALTER TABLE membros MODIFY COLUMN codigo_colaborador INTEGER COMMENT 'FK para a tabela colaboram.';


CREATE TABLE colaboram (
                codigo_colaborador INT NOT NULL,
                codigo_do_membro INT NOT NULL,
                PRIMARY KEY (codigo_colaborador)
);

ALTER TABLE colaboram COMMENT 'Tabela que armazena os membros que colaboram.';

ALTER TABLE colaboram MODIFY COLUMN codigo_colaborador INTEGER COMMENT 'Código único, PK da tabela.';

ALTER TABLE colaboram MODIFY COLUMN codigo_do_membro INTEGER COMMENT 'FK para a tabela membros.';


CREATE TABLE doacoes (
                codigo_da_doacao INT NOT NULL,
                nome VARCHAR(100) NOT NULL,
                data_da_doacao DATE NOT NULL,
                identificacao_do_doador INT,
                cdigo_do_membro INT NOT NULL,
                PRIMARY KEY (codigo_da_doacao)
);

ALTER TABLE doacoes COMMENT 'Tabela que armazena as doações.';

ALTER TABLE doacoes MODIFY COLUMN codigo_da_doacao INTEGER COMMENT 'Codigo único de cada doação, PK da tabela.';

ALTER TABLE doacoes MODIFY COLUMN nome VARCHAR(100) COMMENT 'Nome.';

ALTER TABLE doacoes MODIFY COLUMN data_da_doacao DATE COMMENT 'Data da doação.';

ALTER TABLE doacoes MODIFY COLUMN identificacao_do_doador INTEGER COMMENT 'Série numeral que identifica o doador.';

ALTER TABLE doacoes MODIFY COLUMN cdigo_do_membro INTEGER COMMENT 'FK para a tabela membros.';


CREATE TABLE destinacoes (
                codigo_da_doacao INT NOT NULL,
                codigo_da_imagem INT NOT NULL,
                codigo_da_comunidade INT NOT NULL,
                data DATE NOT NULL,
                observacoes VARCHAR(100),
                recebedor VARCHAR(100) NOT NULL,
                PRIMARY KEY (codigo_da_doacao, codigo_da_imagem, codigo_da_comunidade)
);

ALTER TABLE destinacoes COMMENT 'Tabela que armazena as destinações.';

ALTER TABLE destinacoes MODIFY COLUMN codigo_da_doacao INTEGER COMMENT 'Codigo único de cada doação, PK da tabela.';

ALTER TABLE destinacoes MODIFY COLUMN codigo_da_imagem INTEGER COMMENT 'Código de cada imagem, PK da tabela.';

ALTER TABLE destinacoes MODIFY COLUMN codigo_da_comunidade INTEGER COMMENT 'Código único, PK da tabela.';

ALTER TABLE destinacoes MODIFY COLUMN data DATE COMMENT 'Data da destinação.';

ALTER TABLE destinacoes MODIFY COLUMN observacoes VARCHAR(100) COMMENT 'Observações das destinações.';


CREATE TABLE trabalhos (
                codigo_da_doacao INT NOT NULL,
                nome_do_doador VARCHAR(100) NOT NULL,
                tipo_de_trabalho VARCHAR(50) NOT NULL,
                PRIMARY KEY (codigo_da_doacao)
);

ALTER TABLE trabalhos COMMENT 'Tabela que contém os tipos de trabalhos doados.';

ALTER TABLE trabalhos MODIFY COLUMN codigo_da_doacao INTEGER COMMENT 'Codigo único, PK da tabela.';

ALTER TABLE trabalhos MODIFY COLUMN nome_do_doador VARCHAR(100) COMMENT 'Nome do doador.';

ALTER TABLE trabalhos MODIFY COLUMN tipo_de_trabalho VARCHAR(50) COMMENT 'Tipo de trabalho prestado.';


CREATE TABLE disponibilidade (
                codigo_da_doacao INT NOT NULL,
                dias_de_disponibilidade DATE NOT NULL,
                horarios TIME NOT NULL,
                PRIMARY KEY (codigo_da_doacao)
);

ALTER TABLE disponibilidade COMMENT 'Tabela que contém os dias e os horários disponíveis.';

ALTER TABLE disponibilidade MODIFY COLUMN codigo_da_doacao INTEGER COMMENT 'Codigo unico da doacao. Pk da tabela.';

ALTER TABLE disponibilidade MODIFY COLUMN dias_de_disponibilidade DATE COMMENT 'Dias de disponibilidade';

ALTER TABLE disponibilidade MODIFY COLUMN horarios TIME COMMENT 'Horarios disponiveis.';


CREATE TABLE bens (
                codigo_da_doacao INT NOT NULL,
                descricao VARCHAR(500),
                tipo VARCHAR(30) NOT NULL,
                PRIMARY KEY (codigo_da_doacao)
);

ALTER TABLE bens COMMENT 'Tabela que armazena os bens doados.';

ALTER TABLE bens MODIFY COLUMN codigo_da_doacao INTEGER COMMENT 'Codigo único, PK da tabela.';

ALTER TABLE bens MODIFY COLUMN descricao VARCHAR(500) COMMENT 'Descricao do tipo de bem.';

ALTER TABLE bens MODIFY COLUMN tipo VARCHAR(30) COMMENT 'Tipo dos bens doados.';


CREATE TABLE monetarios (
                codigo_da_doacao INT NOT NULL,
                valor INT NOT NULL,
                tipo_de_moeda VARCHAR(5),
                PRIMARY KEY (codigo_da_doacao)
);

ALTER TABLE monetarios COMMENT 'Tabela que armazena as doações monetárias.';

ALTER TABLE monetarios MODIFY COLUMN codigo_da_doacao INTEGER COMMENT 'Codigo único, PK da tabela.';

ALTER TABLE monetarios MODIFY COLUMN valor INTEGER COMMENT 'Valor doado.';

ALTER TABLE monetarios MODIFY COLUMN tipo_de_moeda VARCHAR(5) COMMENT 'Tipo de moeda (dólar ou real).';


CREATE TABLE programas (
                codigo_do_programa INT NOT NULL,
                nome VARCHAR(100) NOT NULL,
                descricao VARCHAR(100) NOT NULL,
                objetivos VARCHAR(150) NOT NULL,
                cdigo_do_membro INT NOT NULL,
                data_de_inicio DATE NOT NULL,
                data_final_prevista DATE,
                PRIMARY KEY (codigo_do_programa)
);

ALTER TABLE programas COMMENT 'Tabela que armazena os programas da igreja.';

ALTER TABLE programas MODIFY COLUMN codigo_do_programa INTEGER COMMENT 'Código único de cada programa, PK da tabela.';

ALTER TABLE programas MODIFY COLUMN nome VARCHAR(100) COMMENT 'Nome de cada programa.';

ALTER TABLE programas MODIFY COLUMN descricao VARCHAR(100) COMMENT 'Descrição de cada programa.';

ALTER TABLE programas MODIFY COLUMN objetivos VARCHAR(150) COMMENT 'Objetivos de cada programa.';

ALTER TABLE programas MODIFY COLUMN cdigo_do_membro INTEGER COMMENT 'FK para a tabela membros.';

ALTER TABLE programas MODIFY COLUMN data_de_inicio DATE COMMENT 'Data de ínicio do programa.';

ALTER TABLE programas MODIFY COLUMN data_final_prevista DATE COMMENT 'Data final prevista do programa.';


CREATE TABLE desenvolvem (
                codigo_do_programa INT NOT NULL,
                codigo_da_comunidade INT NOT NULL,
                PRIMARY KEY (codigo_do_programa, codigo_da_comunidade)
);

ALTER TABLE desenvolvem MODIFY COLUMN codigo_do_programa INTEGER COMMENT 'Código único de cada programa, PK da tabela.';

ALTER TABLE desenvolvem MODIFY COLUMN codigo_da_comunidade INTEGER COMMENT 'Código único de cada comunidade, PK da tabela.';


CREATE TABLE usam (
                codigo_do_programa INT NOT NULL,
                codigo_da_imagem INT NOT NULL,
                PRIMARY KEY (codigo_do_programa, codigo_da_imagem)
);

ALTER TABLE usam MODIFY COLUMN codigo_do_programa INTEGER COMMENT 'Código único de cada programa, PK da tabela.';

ALTER TABLE usam MODIFY COLUMN codigo_da_imagem INTEGER COMMENT 'Código de cada imagem, PK da tabela.';


CREATE TABLE membros_telefones (
                cdigo_do_membro INT NOT NULL,
                numero VARCHAR(11) NOT NULL,
                tipo VARCHAR(50),
                PRIMARY KEY (cdigo_do_membro, numero)
);

ALTER TABLE membros_telefones COMMENT 'Tabela que armazela o telefone dos membros.';

ALTER TABLE membros_telefones MODIFY COLUMN cdigo_do_membro INTEGER COMMENT 'Código unico de cada membro, PK da tabela.';

ALTER TABLE membros_telefones MODIFY COLUMN numero VARCHAR(11) COMMENT 'Número do telefone dos membros (possui DDD e número)';

ALTER TABLE membros_telefones MODIFY COLUMN tipo VARCHAR(50) COMMENT 'Tipo do telefone.';


ALTER TABLE usam ADD CONSTRAINT imagens_usam_fk
FOREIGN KEY (codigo_da_imagem)
REFERENCES imagens (codigo_da_imagem)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE usam_1 ADD CONSTRAINT imagens_usam_fk1
FOREIGN KEY (codigo_da_imagem)
REFERENCES imagens (codigo_da_imagem)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE usam_2 ADD CONSTRAINT imagens_usam_fk2
FOREIGN KEY (codigo_da_imagem)
REFERENCES imagens (codigo_da_imagem)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE registram ADD CONSTRAINT imagens_registram_fk
FOREIGN KEY (codigo_da_imagem)
REFERENCES imagens (codigo_da_imagem)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE destinacoes ADD CONSTRAINT registram_destinacoes_fk
FOREIGN KEY (codigo_da_imagem)
REFERENCES registram (codigo_da_imagem)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE antendidos_telefones ADD CONSTRAINT atendidos_antendidos_telefones_fk
FOREIGN KEY (codigo_da_comunidade)
REFERENCES atendidos (codigo_da_comunidade)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE cadastram ADD CONSTRAINT atendidos_cadastram_fk
FOREIGN KEY (codigo_da_comunidade)
REFERENCES atendidos (codigo_da_comunidade)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE usam_2 ADD CONSTRAINT atendidos_usam_fk
FOREIGN KEY (codigo_da_comunidade)
REFERENCES atendidos (codigo_da_comunidade)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE destinacoes ADD CONSTRAINT atendidos_destinacoes_fk
FOREIGN KEY (codigo_da_comunidade)
REFERENCES atendidos (codigo_da_comunidade)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE comunidades ADD CONSTRAINT uf_1_comunidades_fk
FOREIGN KEY (uf)
REFERENCES uf_1 (sigla)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE comunidades ADD CONSTRAINT bairro_1_comunidades_fk
FOREIGN KEY (codigo_do_bairro)
REFERENCES bairro_1 (codigo)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE comunidades ADD CONSTRAINT cep_1_comunidades_fk
FOREIGN KEY (cep)
REFERENCES cep_1 (cep)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE comunidades ADD CONSTRAINT cidade_1_comunidades_fk
FOREIGN KEY (codigo_da_cidade)
REFERENCES cidade_1 (codigo)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE comunidades_telefones ADD CONSTRAINT comunidades_comunidades_telefones_fk
FOREIGN KEY (codigo_da_comunidade)
REFERENCES comunidades (codigo_da_comunidade)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE comunidade_emails ADD CONSTRAINT comunidades_comunidade_emails_fk
FOREIGN KEY (codigo_da_comunidade)
REFERENCES comunidades (codigo_da_comunidade)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE desenvolvem ADD CONSTRAINT comunidades_desenvolvem_fk
FOREIGN KEY (codigo_da_comunidade)
REFERENCES comunidades (codigo_da_comunidade)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE cadastram ADD CONSTRAINT comunidades_cadastram_fk
FOREIGN KEY (codigo_da_comunidade)
REFERENCES comunidades (codigo_da_comunidade)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE usam_1 ADD CONSTRAINT comunidades_usam_fk
FOREIGN KEY (codigo_da_comunidade)
REFERENCES comunidades (codigo_da_comunidade)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE membros ADD CONSTRAINT cep_membros_fk
FOREIGN KEY (cep)
REFERENCES cep (cep)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE membros ADD CONSTRAINT uf_membros_fk
FOREIGN KEY (uf)
REFERENCES uf (uf)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE cidade ADD CONSTRAINT uf_cidade_fk
FOREIGN KEY (uf)
REFERENCES uf (uf)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE membros ADD CONSTRAINT cidade_membros_fk
FOREIGN KEY (codigo_da_cidade)
REFERENCES cidade (codigo)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE bairro ADD CONSTRAINT cidade_bairro_fk
FOREIGN KEY (codigo)
REFERENCES cidade (codigo)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE membros ADD CONSTRAINT bairro_membros_fk
FOREIGN KEY (codigo_bairro)
REFERENCES bairro (codigo)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE membros_telefones ADD CONSTRAINT membros_membros_telefones_fk
FOREIGN KEY (cdigo_do_membro)
REFERENCES membros (codigo_do_membro)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE programas ADD CONSTRAINT membros_programas_fk
FOREIGN KEY (cdigo_do_membro)
REFERENCES membros (codigo_do_membro)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE doacoes ADD CONSTRAINT membros_doacoes_fk
FOREIGN KEY (cdigo_do_membro)
REFERENCES membros (codigo_do_membro)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE colaboram ADD CONSTRAINT membros_colaboram_fk
FOREIGN KEY (codigo_do_membro)
REFERENCES membros (codigo_do_membro)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE membros ADD CONSTRAINT colaboram_membros_fk
FOREIGN KEY (codigo_colaborador)
REFERENCES colaboram (codigo_colaborador)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE monetarios ADD CONSTRAINT doacoes_monetarios_fk
FOREIGN KEY (codigo_da_doacao)
REFERENCES doacoes (codigo_da_doacao)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE bens ADD CONSTRAINT doacoes_bens_fk
FOREIGN KEY (codigo_da_doacao)
REFERENCES doacoes (codigo_da_doacao)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE trabalhos ADD CONSTRAINT doacoes_trabalhos_fk
FOREIGN KEY (codigo_da_doacao)
REFERENCES doacoes (codigo_da_doacao)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE destinacoes ADD CONSTRAINT doacoes_destinacoes_fk
FOREIGN KEY (codigo_da_doacao)
REFERENCES doacoes (codigo_da_doacao)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE disponibilidade ADD CONSTRAINT trabalhos_disponibilidade_fk
FOREIGN KEY (codigo_da_doacao)
REFERENCES trabalhos (codigo_da_doacao)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE usam ADD CONSTRAINT programas_usam_fk
FOREIGN KEY (codigo_do_programa)
REFERENCES programas (codigo_do_programa)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE desenvolvem ADD CONSTRAINT programas_desenvolvem_fk
FOREIGN KEY (codigo_do_programa)
REFERENCES programas (codigo_do_programa)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE membros 
ADD CONSTRAINT ck_sexo
CHECK (sexo in ('F', 'M'));