-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 11-Maio-2019 às 03:00
-- Versão do servidor: 10.1.35-MariaDB
-- versão do PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projeto`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunos`
--

CREATE TABLE `alunos` (
  `aluno_id` int(11) NOT NULL,
  `aluno_rgm` varchar(20) NOT NULL,
  `aluno_pessoa_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `anexos`
--

CREATE TABLE `anexos` (
  `anexo_id` int(11) NOT NULL,
  `anexo_nome` varchar(200) NOT NULL,
  `anexo_projeto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `anexos_repositorios_de_ideias`
--

CREATE TABLE `anexos_repositorios_de_ideias` (
  `anexo_repositorio_de_ideia_id` int(11) NOT NULL,
  `anexo_repositorio_de_ideia_nome` varchar(200) NOT NULL,
  `anexo_repositorio_de_ideia_repositorio_de_ideia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `anos`
--

CREATE TABLE `anos` (
  `ano_id` int(11) NOT NULL,
  `ano_nome` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `anos`
--

INSERT INTO `anos` (`ano_id`, `ano_nome`) VALUES
(1, 2019),
(2, 2020),
(3, 2021),
(4, 2022),
(5, 2023),
(6, 2024),
(7, 2025),
(8, 2026),
(9, 2027),
(10, 2028),
(11, 2029);

-- --------------------------------------------------------

--
-- Estrutura da tabela `assessores_academicos`
--

CREATE TABLE `assessores_academicos` (
  `assessor_academico_id` int(11) NOT NULL,
  `assessor_academico_matricula` varchar(20) NOT NULL,
  `assessor_academico_pessoa_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `atendimentos_dos_monitores`
--

CREATE TABLE `atendimentos_dos_monitores` (
  `a_m_id` int(11) NOT NULL,
  `a_m_horario_inicial` time NOT NULL,
  `a_m_horario_final` time NOT NULL,
  `a_m_dia_da_semana_id` int(11) NOT NULL,
  `a_m_monitor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `aulas`
--

CREATE TABLE `aulas` (
  `aula_id` int(11) NOT NULL,
  `aula_periodo_id` int(11) NOT NULL,
  `aula_semana_id` int(11) NOT NULL,
  `aula_disciplina_id` int(11) NOT NULL,
  `aula_turma_id` int(11) NOT NULL,
  `aula_professor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `campus`
--

CREATE TABLE `campus` (
  `campus_id` int(11) NOT NULL,
  `campus_nome` varchar(200) NOT NULL,
  `campus_cnpj` varchar(50) NOT NULL,
  `campus_email` varchar(100) NOT NULL,
  `campus_telefone` varchar(20) NOT NULL,
  `campus_cep` varchar(20) NOT NULL,
  `campus_logradouro` varchar(200) NOT NULL,
  `campus_numero` varchar(10) NOT NULL,
  `campus_bairro` varchar(100) NOT NULL,
  `campus_cidade` varchar(100) NOT NULL,
  `campus_estado_sigla` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `campus`
--

INSERT INTO `campus` (`campus_id`, `campus_nome`, `campus_cnpj`, `campus_email`, `campus_telefone`, `campus_cep`, `campus_logradouro`, `campus_numero`, `campus_bairro`, `campus_cidade`, `campus_estado_sigla`) VALUES
(1, 'Centro Universitário Modulo ', '50.005.735/0001-86', 'Maria.ribeiro@modulo.edu.br', '(12) 3897-2000', '11662-047', 'Rua Maria D\'Assumpção Carvalho', '1000', 'Martin de Sá', 'Caraguatatuba', 'SP');

-- --------------------------------------------------------

--
-- Estrutura da tabela `coordenadores`
--

CREATE TABLE `coordenadores` (
  `coordenador_id` int(11) NOT NULL,
  `coordenador_matricula` varchar(20) NOT NULL,
  `coordenador_pessoa_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

CREATE TABLE `cursos` (
  `curso_id` int(11) NOT NULL,
  `curso_nome` varchar(100) NOT NULL,
  `curso_codigo` varchar(20) NOT NULL,
  `curso_carga_horaria` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `dias_da_semana`
--

CREATE TABLE `dias_da_semana` (
  `dia_da_semana_id` int(11) NOT NULL,
  `dia_da_semana_nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `dias_da_semana`
--

INSERT INTO `dias_da_semana` (`dia_da_semana_id`, `dia_da_semana_nome`) VALUES
(1, 'Domingo'),
(4, 'Quarta'),
(5, 'Quinta'),
(7, 'Sábado'),
(2, 'Segunda'),
(6, 'Sexta'),
(3, 'Terça');

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplinas`
--

CREATE TABLE `disciplinas` (
  `disciplina_id` int(11) NOT NULL,
  `disciplina_nome` varchar(100) NOT NULL,
  `disciplina_codigo` varchar(20) NOT NULL,
  `disciplina_carga_horaria` time NOT NULL,
  `disciplina_hora_aula` time NOT NULL,
  `disciplina_hora_relogio` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `disciplinas_dos_projetos`
--

CREATE TABLE `disciplinas_dos_projetos` (
  `disciplina_do_projeto_id` int(11) NOT NULL,
  `disciplina_do_projeto_projeto_id` int(11) NOT NULL,
  `disciplina_do_projeto_disciplina_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `integrantes_dos_projetos`
--

CREATE TABLE `integrantes_dos_projetos` (
  `integrante_do_projeto_id` int(11) NOT NULL,
  `integrante_do_projeto_projeto_id` int(11) NOT NULL,
  `integrante_do_projeto_aluno_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `listas`
--

CREATE TABLE `listas` (
  `lista_id` int(11) NOT NULL,
  `lista_presenca` tinyint(1) NOT NULL,
  `lista_data` datetime NOT NULL,
  `lista_aluno_id` int(11) NOT NULL,
  `lista_aula_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `meses`
--

CREATE TABLE `meses` (
  `mes_id` int(11) NOT NULL,
  `mes_nome` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `meses`
--

INSERT INTO `meses` (`mes_id`, `mes_nome`) VALUES
(1, 'Janeiro'),
(2, 'Fevereiro'),
(3, 'Março'),
(4, 'Abril'),
(5, 'Maio'),
(6, 'Junho'),
(7, 'Julho'),
(8, 'Agosto'),
(9, 'Setembro'),
(10, 'Outubro'),
(11, 'Novembro'),
(12, 'Dezembro');

-- --------------------------------------------------------

--
-- Estrutura da tabela `monitores`
--

CREATE TABLE `monitores` (
  `monitor_id` int(11) NOT NULL,
  `monitor_bolsista` tinyint(1) NOT NULL,
  `monitor_foto` varchar(100) NOT NULL,
  `monitor_aluno_id` int(11) NOT NULL,
  `monitor_curso_id` int(11) NOT NULL,
  `monitor_disciplina_id` int(11) NOT NULL,
  `monitor_campus_id` int(11) NOT NULL,
  `monitor_mes_id` int(11) NOT NULL,
  `monitor_semestre_id` int(11) NOT NULL,
  `monitor_ano_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `niveis_de_acessos`
--

CREATE TABLE `niveis_de_acessos` (
  `nivel_de_acesso_id` int(11) NOT NULL,
  `nivel_de_acesso_nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `niveis_de_acessos`
--

INSERT INTO `niveis_de_acessos` (`nivel_de_acesso_id`, `nivel_de_acesso_nome`) VALUES
(2, 'Aluno'),
(5, 'Assessor acadêmico'),
(4, 'Coordenador'),
(3, 'Professor'),
(1, 'Usuário');

-- --------------------------------------------------------

--
-- Estrutura da tabela `nomes_das_turmas`
--

CREATE TABLE `nomes_das_turmas` (
  `nome_da_turma_id` int(11) NOT NULL,
  `nome_da_turma_nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `nomes_das_turmas`
--

INSERT INTO `nomes_das_turmas` (`nome_da_turma_id`, `nome_da_turma_nome`) VALUES
(1, 'ADS, 3°Semestre / 2019'),
(2, 'ADS, 1°Semestre / 2019');

-- --------------------------------------------------------

--
-- Estrutura da tabela `nomes_dos_semestres`
--

CREATE TABLE `nomes_dos_semestres` (
  `nome_do_semestre_id` int(11) NOT NULL,
  `nome_do_semestre_nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `nomes_dos_semestres`
--

INSERT INTO `nomes_dos_semestres` (`nome_do_semestre_id`, `nome_do_semestre_nome`) VALUES
(1, '1° Semestre'),
(2, '2° Semestre'),
(3, '3° Semestre'),
(4, '4° Semestre'),
(5, '5° Semestre'),
(6, '6° Semestre'),
(7, '7° Semestre'),
(8, '8° Semestre'),
(9, '9° Semestre'),
(10, '10° Semestre');

-- --------------------------------------------------------

--
-- Estrutura da tabela `notas`
--

CREATE TABLE `notas` (
  `nota_id` int(11) NOT NULL,
  `nota_valor` float NOT NULL,
  `nota_parametro_nota_id` int(11) NOT NULL,
  `nota_disciplina_id` int(11) NOT NULL,
  `nota_professor_id` int(11) NOT NULL,
  `nota_aluno_id` int(11) NOT NULL,
  `nota_curso_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `parametros_notas`
--

CREATE TABLE `parametros_notas` (
  `parametro_nota_id` int(11) NOT NULL,
  `parametro_nota_nome` varchar(50) NOT NULL,
  `parametro_nota_descricao` longtext,
  `parametro_nota_valor_maximo` double UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `parametros_notas`
--

INSERT INTO `parametros_notas` (`parametro_nota_id`, `parametro_nota_nome`, `parametro_nota_descricao`, `parametro_nota_valor_maximo`) VALUES
(1, 'A1', 'A1 - 5 pontos, sendo:\r\nAvaliação Regimental: 3 pontos\r\nProjeto Integrado: 2 pontos\r\n', 5),
(2, 'A2', 'A2 - 5 pontos, sendo:\r\nAvaliação Intermediária: 2 pontos\r\nAtividades/Exercícios: 3 pontos (incluso a autoavaliação)', 5),
(3, 'AF', 'Para o aluno que não atingir a NF(Nota Final) igual ou superior a 6 pontos, neste caso substitui a menor nota.', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `periodos`
--

CREATE TABLE `periodos` (
  `periodo_id` int(11) NOT NULL,
  `periodo_nome` varchar(50) NOT NULL,
  `periodo_hora_inicio` time NOT NULL,
  `periodo_hora_termino` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `periodos`
--

INSERT INTO `periodos` (`periodo_id`, `periodo_nome`, `periodo_hora_inicio`, `periodo_hora_termino`) VALUES
(1, '1° Período', '08:00:00', '08:50:00'),
(2, '2° Período', '08:50:00', '09:40:00'),
(3, '3°Período', '09:50:00', '10:40:00'),
(4, '4° Período', '10:40:00', '11:30:00'),
(5, '5° Período', '19:00:00', '19:50:00'),
(6, '6° Período', '19:50:00', '20:40:00'),
(7, '7° Período', '20:50:00', '21:40:00'),
(8, '8° Período', '21:40:00', '22:30:00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `periodos_dos_semestres`
--

CREATE TABLE `periodos_dos_semestres` (
  `periodo_do_semestre_id` int(11) NOT NULL,
  `periodo_do_semestre_inicio` date NOT NULL,
  `periodo_do_semestre_fim` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `periodos_dos_semestres`
--

INSERT INTO `periodos_dos_semestres` (`periodo_do_semestre_id`, `periodo_do_semestre_inicio`, `periodo_do_semestre_fim`) VALUES
(1, '2019-02-04', '2019-06-28'),
(2, '2019-08-01', '2019-12-20');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoas`
--

CREATE TABLE `pessoas` (
  `pessoa_id` int(11) NOT NULL,
  `pessoa_nome` varchar(100) NOT NULL,
  `pessoa_cpf` varchar(20) NOT NULL,
  `pessoa_email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `professores`
--

CREATE TABLE `professores` (
  `professor_id` int(11) NOT NULL,
  `professor_matricula` varchar(20) NOT NULL,
  `professor_pessoa_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `projetos`
--

CREATE TABLE `projetos` (
  `projeto_id` int(11) NOT NULL,
  `projeto_nome` varchar(200) NOT NULL,
  `projeto_data_de_entrega` date NOT NULL,
  `projeto_descricao` longtext NOT NULL,
  `projeto_semestre_id` int(11) NOT NULL,
  `projeto_ano_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `relatorios_avaliativos_diarios`
--

CREATE TABLE `relatorios_avaliativos_diarios` (
  `r_a_d_id` int(11) NOT NULL,
  `r_a_d_data_da_monitoria` date NOT NULL,
  `r_a_d_foto_da_monitoria` varchar(100) NOT NULL,
  `r_a_d_descricao` longtext NOT NULL,
  `r_a_d_progresso` longtext NOT NULL,
  `r_a_d_dominio_do_conteudo` longtext NOT NULL,
  `r_a_d__disciplina_id` int(11) NOT NULL,
  `r_a_d__professor_id` int(11) NOT NULL,
  `r_a_d__monitor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `relatorios_avaliativos_mensais`
--

CREATE TABLE `relatorios_avaliativos_mensais` (
  `r_a_m_id` int(11) NOT NULL,
  `r_a_m_data_do_relatorio` date NOT NULL,
  `r_a_m_descricao` longtext NOT NULL,
  `r_a_m_progresso` longtext NOT NULL,
  `r_a_m_dominio_do_conteudo` longtext NOT NULL,
  `r_a_m_disciplina_id` int(11) NOT NULL,
  `r_a_m_professor_id` int(11) NOT NULL,
  `r_a_m_monitor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `relatorios_diarios_dos_relatorios_mensais`
--

CREATE TABLE `relatorios_diarios_dos_relatorios_mensais` (
  `r_d_r_m_id` int(11) NOT NULL,
  `r_d_r_m_r_a_m_id` int(11) NOT NULL,
  `r_d_r_m_r_a_d_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `repositorios_de_ideias`
--

CREATE TABLE `repositorios_de_ideias` (
  `repositorio_de_ideia_id` int(11) NOT NULL,
  `repositorio_de_ideia_titulo` varchar(200) NOT NULL,
  `repositorio_de_ideia_nome` varchar(100) NOT NULL,
  `repositorio_de_ideia_email` varchar(50) NOT NULL,
  `repositorio_de_ideia_descricao` longtext NOT NULL,
  `repositorio_de_ideia_data` datetime NOT NULL,
  `repositorio_de_ideia_usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `semestres`
--

CREATE TABLE `semestres` (
  `semestre_id` int(11) NOT NULL,
  `semestre_nome_do_semestre_id` int(11) NOT NULL,
  `semestre_periodo_do_semestre_id` int(11) NOT NULL,
  `semestre_ano_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `turmas`
--

CREATE TABLE `turmas` (
  `turma_id` int(11) NOT NULL,
  `turma_nome_da_turma_id` int(11) NOT NULL,
  `turma_semestre_id` int(11) NOT NULL,
  `turma_curso_id` int(11) NOT NULL,
  `turma_coordenador_id` int(11) NOT NULL,
  `turma_aluno_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario_id` int(11) NOT NULL,
  `usuario_nome` varchar(20) NOT NULL,
  `usuario_senha` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`usuario_id`, `usuario_nome`, `usuario_senha`) VALUES
(1, 'João', '1234'),
(2, 'Lucas', '321');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios_e_niveis`
--

CREATE TABLE `usuarios_e_niveis` (
  `usuario_e_nivel_id` int(11) NOT NULL,
  `usuario_e_nivel_usuario_id` int(11) NOT NULL,
  `usuario_e_nivel_nivel_de_acesso_id` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`aluno_id`),
  ADD UNIQUE KEY `aluno_rgm_UNIQUE` (`aluno_rgm`),
  ADD KEY `fk_alunos_pessoas1_idx` (`aluno_pessoa_id`);

--
-- Indexes for table `anexos`
--
ALTER TABLE `anexos`
  ADD PRIMARY KEY (`anexo_id`),
  ADD KEY `fk_anexos_projetos1_idx` (`anexo_projeto_id`);

--
-- Indexes for table `anexos_repositorios_de_ideias`
--
ALTER TABLE `anexos_repositorios_de_ideias`
  ADD PRIMARY KEY (`anexo_repositorio_de_ideia_id`),
  ADD KEY `fk_anexos_repositorios_de_ideias_repositorios_de_ideias1_idx` (`anexo_repositorio_de_ideia_repositorio_de_ideia_id`);

--
-- Indexes for table `anos`
--
ALTER TABLE `anos`
  ADD PRIMARY KEY (`ano_id`);

--
-- Indexes for table `assessores_academicos`
--
ALTER TABLE `assessores_academicos`
  ADD PRIMARY KEY (`assessor_academico_id`),
  ADD UNIQUE KEY `acessor_academico_matricula_UNIQUE` (`assessor_academico_matricula`),
  ADD KEY `fk_assessor_academico_pessoas1_idx` (`assessor_academico_pessoa_id`);

--
-- Indexes for table `atendimentos_dos_monitores`
--
ALTER TABLE `atendimentos_dos_monitores`
  ADD PRIMARY KEY (`a_m_id`),
  ADD KEY `fk_atendimentos_dos_monitores_dias_da_semana1_idx` (`a_m_dia_da_semana_id`),
  ADD KEY `fk_atendimentos_dos_monitores_monitores1_idx` (`a_m_monitor_id`);

--
-- Indexes for table `aulas`
--
ALTER TABLE `aulas`
  ADD PRIMARY KEY (`aula_id`),
  ADD KEY `fk_aula_periodos1_idx` (`aula_periodo_id`),
  ADD KEY `fk_aula_semana1_idx` (`aula_semana_id`),
  ADD KEY `fk_aula_disciplinas1_idx` (`aula_disciplina_id`),
  ADD KEY `fk_aula_turma1_idx` (`aula_turma_id`),
  ADD KEY `fk_aula_professores1_idx` (`aula_professor_id`);

--
-- Indexes for table `campus`
--
ALTER TABLE `campus`
  ADD PRIMARY KEY (`campus_id`),
  ADD UNIQUE KEY `campus_email_UNIQUE` (`campus_email`),
  ADD UNIQUE KEY `campus_telefone_UNIQUE` (`campus_telefone`),
  ADD UNIQUE KEY `campus_cnpj_UNIQUE` (`campus_cnpj`);

--
-- Indexes for table `coordenadores`
--
ALTER TABLE `coordenadores`
  ADD PRIMARY KEY (`coordenador_id`),
  ADD UNIQUE KEY `coordenador_matricula_UNIQUE` (`coordenador_matricula`),
  ADD KEY `fk_coordenadores_pessoas1_idx` (`coordenador_pessoa_id`);

--
-- Indexes for table `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`curso_id`),
  ADD UNIQUE KEY `curso_nome_UNIQUE` (`curso_nome`),
  ADD UNIQUE KEY `curso_codigo_UNIQUE` (`curso_codigo`);

--
-- Indexes for table `dias_da_semana`
--
ALTER TABLE `dias_da_semana`
  ADD PRIMARY KEY (`dia_da_semana_id`),
  ADD UNIQUE KEY `semana_nome_UNIQUE` (`dia_da_semana_nome`);

--
-- Indexes for table `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD PRIMARY KEY (`disciplina_id`),
  ADD UNIQUE KEY `disciplina_nome_UNIQUE` (`disciplina_nome`),
  ADD UNIQUE KEY `disciplina_codigo_UNIQUE` (`disciplina_codigo`);

--
-- Indexes for table `disciplinas_dos_projetos`
--
ALTER TABLE `disciplinas_dos_projetos`
  ADD PRIMARY KEY (`disciplina_do_projeto_id`),
  ADD KEY `fk_disciplinas_dos_projetos_projetos1_idx` (`disciplina_do_projeto_projeto_id`),
  ADD KEY `fk_disciplinas_dos_projetos_disciplinas1_idx` (`disciplina_do_projeto_disciplina_id`);

--
-- Indexes for table `integrantes_dos_projetos`
--
ALTER TABLE `integrantes_dos_projetos`
  ADD PRIMARY KEY (`integrante_do_projeto_id`),
  ADD KEY `fk_integrantes_e_disciplinas_dos_projetos_projetos1_idx` (`integrante_do_projeto_projeto_id`),
  ADD KEY `fk_integrantes_e_disciplinas_dos_projetos_alunos1_idx` (`integrante_do_projeto_aluno_id`);

--
-- Indexes for table `listas`
--
ALTER TABLE `listas`
  ADD PRIMARY KEY (`lista_id`),
  ADD KEY `fk_lista_alunos1_idx` (`lista_aluno_id`),
  ADD KEY `fk_lista_aula1_idx` (`lista_aula_id`);

--
-- Indexes for table `meses`
--
ALTER TABLE `meses`
  ADD PRIMARY KEY (`mes_id`);

--
-- Indexes for table `monitores`
--
ALTER TABLE `monitores`
  ADD PRIMARY KEY (`monitor_id`),
  ADD KEY `fk_monitores_alunos1_idx` (`monitor_aluno_id`),
  ADD KEY `fk_monitores_cursos1_idx` (`monitor_curso_id`),
  ADD KEY `fk_monitores_campus1_idx` (`monitor_campus_id`),
  ADD KEY `fk_monitores_meses1_idx` (`monitor_mes_id`),
  ADD KEY `fk_monitores_semestres1_idx` (`monitor_semestre_id`),
  ADD KEY `fk_monitores_anos1_idx` (`monitor_ano_id`),
  ADD KEY `fk_monitores_disciplinas1_idx` (`monitor_disciplina_id`);

--
-- Indexes for table `niveis_de_acessos`
--
ALTER TABLE `niveis_de_acessos`
  ADD PRIMARY KEY (`nivel_de_acesso_id`),
  ADD UNIQUE KEY `nivel_de_acesso_nome_UNIQUE` (`nivel_de_acesso_nome`);

--
-- Indexes for table `nomes_das_turmas`
--
ALTER TABLE `nomes_das_turmas`
  ADD PRIMARY KEY (`nome_da_turma_id`);

--
-- Indexes for table `nomes_dos_semestres`
--
ALTER TABLE `nomes_dos_semestres`
  ADD PRIMARY KEY (`nome_do_semestre_id`);

--
-- Indexes for table `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`nota_id`),
  ADD KEY `fk_notas_parametros_notas1_idx` (`nota_parametro_nota_id`),
  ADD KEY `fk_notas_disciplinas1_idx` (`nota_disciplina_id`),
  ADD KEY `fk_notas_professores1_idx` (`nota_professor_id`),
  ADD KEY `fk_notas_alunos1_idx` (`nota_aluno_id`),
  ADD KEY `fk_notas_cursos1_idx` (`nota_curso_id`);

--
-- Indexes for table `parametros_notas`
--
ALTER TABLE `parametros_notas`
  ADD PRIMARY KEY (`parametro_nota_id`);

--
-- Indexes for table `periodos`
--
ALTER TABLE `periodos`
  ADD PRIMARY KEY (`periodo_id`),
  ADD UNIQUE KEY `periodo_nome_UNIQUE` (`periodo_nome`);

--
-- Indexes for table `periodos_dos_semestres`
--
ALTER TABLE `periodos_dos_semestres`
  ADD PRIMARY KEY (`periodo_do_semestre_id`);

--
-- Indexes for table `pessoas`
--
ALTER TABLE `pessoas`
  ADD PRIMARY KEY (`pessoa_id`),
  ADD UNIQUE KEY `funcionario_registro_UNIQUE` (`pessoa_cpf`),
  ADD UNIQUE KEY `funcionario_email_UNIQUE` (`pessoa_email`);

--
-- Indexes for table `professores`
--
ALTER TABLE `professores`
  ADD PRIMARY KEY (`professor_id`),
  ADD UNIQUE KEY `professor_matricula_UNIQUE` (`professor_matricula`),
  ADD KEY `fk_professores_pessoas_idx` (`professor_pessoa_id`);

--
-- Indexes for table `projetos`
--
ALTER TABLE `projetos`
  ADD PRIMARY KEY (`projeto_id`),
  ADD KEY `fk_projetos_semestre1_idx` (`projeto_semestre_id`),
  ADD KEY `fk_projetos_anos1_idx` (`projeto_ano_id`);

--
-- Indexes for table `relatorios_avaliativos_diarios`
--
ALTER TABLE `relatorios_avaliativos_diarios`
  ADD PRIMARY KEY (`r_a_d_id`),
  ADD KEY `fk_relatorios_avaliativos_disciplinas1_idx` (`r_a_d__disciplina_id`),
  ADD KEY `fk_relatorios_avaliativos_professores1_idx` (`r_a_d__professor_id`),
  ADD KEY `fk_relatorios_avaliativos_monitores1_idx` (`r_a_d__monitor_id`);

--
-- Indexes for table `relatorios_avaliativos_mensais`
--
ALTER TABLE `relatorios_avaliativos_mensais`
  ADD PRIMARY KEY (`r_a_m_id`),
  ADD KEY `fk_relatorios_avaliativos_mensais_disciplinas1_idx` (`r_a_m_disciplina_id`),
  ADD KEY `fk_relatorios_avaliativos_mensais_professores1_idx` (`r_a_m_professor_id`),
  ADD KEY `fk_relatorios_avaliativos_mensais_monitores1_idx` (`r_a_m_monitor_id`);

--
-- Indexes for table `relatorios_diarios_dos_relatorios_mensais`
--
ALTER TABLE `relatorios_diarios_dos_relatorios_mensais`
  ADD PRIMARY KEY (`r_d_r_m_id`),
  ADD KEY `fk_relatorios_diarios_dos_relatorios_mensais_relatorios_ava_idx` (`r_d_r_m_r_a_m_id`),
  ADD KEY `fk_relatorios_diarios_dos_relatorios_mensais_relatorios_ava_idx1` (`r_d_r_m_r_a_d_id`);

--
-- Indexes for table `repositorios_de_ideias`
--
ALTER TABLE `repositorios_de_ideias`
  ADD PRIMARY KEY (`repositorio_de_ideia_id`),
  ADD KEY `fk_repositorio_de_ideias_usuarios1_idx` (`repositorio_de_ideia_usuario_id`);

--
-- Indexes for table `semestres`
--
ALTER TABLE `semestres`
  ADD PRIMARY KEY (`semestre_id`),
  ADD KEY `fk_semestres_anos1_idx` (`semestre_ano_id`),
  ADD KEY `fk_semestres_nome_dos_semestres1_idx` (`semestre_nome_do_semestre_id`),
  ADD KEY `fk_semestres_periodos_dos_semestres1_idx` (`semestre_periodo_do_semestre_id`);

--
-- Indexes for table `turmas`
--
ALTER TABLE `turmas`
  ADD PRIMARY KEY (`turma_id`),
  ADD KEY `fk_turma_semestre1_idx` (`turma_semestre_id`),
  ADD KEY `fk_turma_cursos1_idx` (`turma_curso_id`),
  ADD KEY `fk_turma_coordenadores1_idx` (`turma_coordenador_id`),
  ADD KEY `fk_turma_alunos1_idx` (`turma_aluno_id`),
  ADD KEY `fk_turmas_nomes_das_turmas1_idx` (`turma_nome_da_turma_id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuario_id`),
  ADD UNIQUE KEY `usuario_nome_UNIQUE` (`usuario_nome`);

--
-- Indexes for table `usuarios_e_niveis`
--
ALTER TABLE `usuarios_e_niveis`
  ADD PRIMARY KEY (`usuario_e_nivel_id`),
  ADD KEY `fk_usuarios_e_niveis_usuarios1_idx` (`usuario_e_nivel_usuario_id`),
  ADD KEY `fk_usuarios_e_niveis_niveis_de_acesso1_idx` (`usuario_e_nivel_nivel_de_acesso_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alunos`
--
ALTER TABLE `alunos`
  MODIFY `aluno_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `anexos`
--
ALTER TABLE `anexos`
  MODIFY `anexo_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `anexos_repositorios_de_ideias`
--
ALTER TABLE `anexos_repositorios_de_ideias`
  MODIFY `anexo_repositorio_de_ideia_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `anos`
--
ALTER TABLE `anos`
  MODIFY `ano_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `assessores_academicos`
--
ALTER TABLE `assessores_academicos`
  MODIFY `assessor_academico_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `atendimentos_dos_monitores`
--
ALTER TABLE `atendimentos_dos_monitores`
  MODIFY `a_m_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aulas`
--
ALTER TABLE `aulas`
  MODIFY `aula_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campus`
--
ALTER TABLE `campus`
  MODIFY `campus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coordenadores`
--
ALTER TABLE `coordenadores`
  MODIFY `coordenador_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cursos`
--
ALTER TABLE `cursos`
  MODIFY `curso_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dias_da_semana`
--
ALTER TABLE `dias_da_semana`
  MODIFY `dia_da_semana_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `disciplinas`
--
ALTER TABLE `disciplinas`
  MODIFY `disciplina_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `disciplinas_dos_projetos`
--
ALTER TABLE `disciplinas_dos_projetos`
  MODIFY `disciplina_do_projeto_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `integrantes_dos_projetos`
--
ALTER TABLE `integrantes_dos_projetos`
  MODIFY `integrante_do_projeto_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `listas`
--
ALTER TABLE `listas`
  MODIFY `lista_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meses`
--
ALTER TABLE `meses`
  MODIFY `mes_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `monitores`
--
ALTER TABLE `monitores`
  MODIFY `monitor_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `niveis_de_acessos`
--
ALTER TABLE `niveis_de_acessos`
  MODIFY `nivel_de_acesso_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `nomes_das_turmas`
--
ALTER TABLE `nomes_das_turmas`
  MODIFY `nome_da_turma_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nomes_dos_semestres`
--
ALTER TABLE `nomes_dos_semestres`
  MODIFY `nome_do_semestre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `notas`
--
ALTER TABLE `notas`
  MODIFY `nota_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parametros_notas`
--
ALTER TABLE `parametros_notas`
  MODIFY `parametro_nota_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `periodos`
--
ALTER TABLE `periodos`
  MODIFY `periodo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `periodos_dos_semestres`
--
ALTER TABLE `periodos_dos_semestres`
  MODIFY `periodo_do_semestre_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pessoas`
--
ALTER TABLE `pessoas`
  MODIFY `pessoa_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `professores`
--
ALTER TABLE `professores`
  MODIFY `professor_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projetos`
--
ALTER TABLE `projetos`
  MODIFY `projeto_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `relatorios_avaliativos_diarios`
--
ALTER TABLE `relatorios_avaliativos_diarios`
  MODIFY `r_a_d_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `relatorios_avaliativos_mensais`
--
ALTER TABLE `relatorios_avaliativos_mensais`
  MODIFY `r_a_m_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `relatorios_diarios_dos_relatorios_mensais`
--
ALTER TABLE `relatorios_diarios_dos_relatorios_mensais`
  MODIFY `r_d_r_m_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `repositorios_de_ideias`
--
ALTER TABLE `repositorios_de_ideias`
  MODIFY `repositorio_de_ideia_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `semestres`
--
ALTER TABLE `semestres`
  MODIFY `semestre_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `turmas`
--
ALTER TABLE `turmas`
  MODIFY `turma_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `usuarios_e_niveis`
--
ALTER TABLE `usuarios_e_niveis`
  MODIFY `usuario_e_nivel_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `alunos`
--
ALTER TABLE `alunos`
  ADD CONSTRAINT `fk_alunos_pessoas1` FOREIGN KEY (`aluno_pessoa_id`) REFERENCES `pessoas` (`pessoa_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `anexos`
--
ALTER TABLE `anexos`
  ADD CONSTRAINT `fk_anexos_projetos1` FOREIGN KEY (`anexo_projeto_id`) REFERENCES `projetos` (`projeto_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `anexos_repositorios_de_ideias`
--
ALTER TABLE `anexos_repositorios_de_ideias`
  ADD CONSTRAINT `fk_anexos_repositorios_de_ideias_repositorios_de_ideias1` FOREIGN KEY (`anexo_repositorio_de_ideia_repositorio_de_ideia_id`) REFERENCES `repositorios_de_ideias` (`repositorio_de_ideia_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `assessores_academicos`
--
ALTER TABLE `assessores_academicos`
  ADD CONSTRAINT `fk_assessor_academico_pessoas1` FOREIGN KEY (`assessor_academico_pessoa_id`) REFERENCES `pessoas` (`pessoa_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `atendimentos_dos_monitores`
--
ALTER TABLE `atendimentos_dos_monitores`
  ADD CONSTRAINT `fk_atendimentos_dos_monitores_dias_da_semana1` FOREIGN KEY (`a_m_dia_da_semana_id`) REFERENCES `dias_da_semana` (`dia_da_semana_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_atendimentos_dos_monitores_monitores1` FOREIGN KEY (`a_m_monitor_id`) REFERENCES `monitores` (`monitor_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `aulas`
--
ALTER TABLE `aulas`
  ADD CONSTRAINT `fk_aula_disciplinas1` FOREIGN KEY (`aula_disciplina_id`) REFERENCES `disciplinas` (`disciplina_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_aula_periodos1` FOREIGN KEY (`aula_periodo_id`) REFERENCES `periodos` (`periodo_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_aula_professores1` FOREIGN KEY (`aula_professor_id`) REFERENCES `professores` (`professor_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_aula_semana1` FOREIGN KEY (`aula_semana_id`) REFERENCES `dias_da_semana` (`dia_da_semana_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_aula_turma1` FOREIGN KEY (`aula_turma_id`) REFERENCES `turmas` (`turma_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `coordenadores`
--
ALTER TABLE `coordenadores`
  ADD CONSTRAINT `fk_coordenadores_pessoas1` FOREIGN KEY (`coordenador_pessoa_id`) REFERENCES `pessoas` (`pessoa_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `disciplinas_dos_projetos`
--
ALTER TABLE `disciplinas_dos_projetos`
  ADD CONSTRAINT `fk_disciplinas_dos_projetos_disciplinas1` FOREIGN KEY (`disciplina_do_projeto_disciplina_id`) REFERENCES `disciplinas` (`disciplina_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_disciplinas_dos_projetos_projetos1` FOREIGN KEY (`disciplina_do_projeto_projeto_id`) REFERENCES `projetos` (`projeto_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `integrantes_dos_projetos`
--
ALTER TABLE `integrantes_dos_projetos`
  ADD CONSTRAINT `fk_integrantes_e_disciplinas_dos_projetos_alunos1` FOREIGN KEY (`integrante_do_projeto_aluno_id`) REFERENCES `alunos` (`aluno_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_integrantes_e_disciplinas_dos_projetos_projetos1` FOREIGN KEY (`integrante_do_projeto_projeto_id`) REFERENCES `projetos` (`projeto_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `listas`
--
ALTER TABLE `listas`
  ADD CONSTRAINT `fk_lista_alunos1` FOREIGN KEY (`lista_aluno_id`) REFERENCES `alunos` (`aluno_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_lista_aula1` FOREIGN KEY (`lista_aula_id`) REFERENCES `aulas` (`aula_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `monitores`
--
ALTER TABLE `monitores`
  ADD CONSTRAINT `fk_monitores_alunos1` FOREIGN KEY (`monitor_aluno_id`) REFERENCES `alunos` (`aluno_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_monitores_anos1` FOREIGN KEY (`monitor_ano_id`) REFERENCES `anos` (`ano_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_monitores_campus1` FOREIGN KEY (`monitor_campus_id`) REFERENCES `campus` (`campus_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_monitores_cursos1` FOREIGN KEY (`monitor_curso_id`) REFERENCES `cursos` (`curso_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_monitores_disciplinas1` FOREIGN KEY (`monitor_disciplina_id`) REFERENCES `disciplinas` (`disciplina_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_monitores_meses1` FOREIGN KEY (`monitor_mes_id`) REFERENCES `meses` (`mes_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_monitores_semestres1` FOREIGN KEY (`monitor_semestre_id`) REFERENCES `semestres` (`semestre_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `notas`
--
ALTER TABLE `notas`
  ADD CONSTRAINT `fk_notas_alunos1` FOREIGN KEY (`nota_aluno_id`) REFERENCES `alunos` (`aluno_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_notas_cursos1` FOREIGN KEY (`nota_curso_id`) REFERENCES `cursos` (`curso_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_notas_disciplinas1` FOREIGN KEY (`nota_disciplina_id`) REFERENCES `disciplinas` (`disciplina_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_notas_parametros_notas1` FOREIGN KEY (`nota_parametro_nota_id`) REFERENCES `parametros_notas` (`parametro_nota_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_notas_professores1` FOREIGN KEY (`nota_professor_id`) REFERENCES `professores` (`professor_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `professores`
--
ALTER TABLE `professores`
  ADD CONSTRAINT `fk_professores_pessoas` FOREIGN KEY (`professor_pessoa_id`) REFERENCES `pessoas` (`pessoa_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `projetos`
--
ALTER TABLE `projetos`
  ADD CONSTRAINT `fk_projetos_anos1` FOREIGN KEY (`projeto_ano_id`) REFERENCES `anos` (`ano_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_projetos_semestre1` FOREIGN KEY (`projeto_semestre_id`) REFERENCES `semestres` (`semestre_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `relatorios_avaliativos_diarios`
--
ALTER TABLE `relatorios_avaliativos_diarios`
  ADD CONSTRAINT `fk_relatorios_avaliativos_disciplinas1` FOREIGN KEY (`r_a_d__disciplina_id`) REFERENCES `disciplinas` (`disciplina_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_relatorios_avaliativos_monitores1` FOREIGN KEY (`r_a_d__monitor_id`) REFERENCES `monitores` (`monitor_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_relatorios_avaliativos_professores1` FOREIGN KEY (`r_a_d__professor_id`) REFERENCES `professores` (`professor_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `relatorios_avaliativos_mensais`
--
ALTER TABLE `relatorios_avaliativos_mensais`
  ADD CONSTRAINT `fk_relatorios_avaliativos_mensais_disciplinas1` FOREIGN KEY (`r_a_m_disciplina_id`) REFERENCES `disciplinas` (`disciplina_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_relatorios_avaliativos_mensais_monitores1` FOREIGN KEY (`r_a_m_monitor_id`) REFERENCES `monitores` (`monitor_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_relatorios_avaliativos_mensais_professores1` FOREIGN KEY (`r_a_m_professor_id`) REFERENCES `professores` (`professor_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `relatorios_diarios_dos_relatorios_mensais`
--
ALTER TABLE `relatorios_diarios_dos_relatorios_mensais`
  ADD CONSTRAINT `fk_relatorios_diarios_dos_relatorios_mensais_relatorios_avali1` FOREIGN KEY (`r_d_r_m_r_a_m_id`) REFERENCES `relatorios_avaliativos_mensais` (`r_a_m_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_relatorios_diarios_dos_relatorios_mensais_relatorios_avali2` FOREIGN KEY (`r_d_r_m_r_a_d_id`) REFERENCES `relatorios_avaliativos_diarios` (`r_a_d_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `repositorios_de_ideias`
--
ALTER TABLE `repositorios_de_ideias`
  ADD CONSTRAINT `fk_repositorio_de_ideias_usuarios1` FOREIGN KEY (`repositorio_de_ideia_usuario_id`) REFERENCES `usuarios` (`usuario_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `semestres`
--
ALTER TABLE `semestres`
  ADD CONSTRAINT `fk_semestres_anos1` FOREIGN KEY (`semestre_ano_id`) REFERENCES `anos` (`ano_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_semestres_nome_dos_semestres1` FOREIGN KEY (`semestre_nome_do_semestre_id`) REFERENCES `nomes_dos_semestres` (`nome_do_semestre_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_semestres_periodos_dos_semestres1` FOREIGN KEY (`semestre_periodo_do_semestre_id`) REFERENCES `periodos_dos_semestres` (`periodo_do_semestre_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `turmas`
--
ALTER TABLE `turmas`
  ADD CONSTRAINT `fk_turma_alunos1` FOREIGN KEY (`turma_aluno_id`) REFERENCES `alunos` (`aluno_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_turma_coordenadores1` FOREIGN KEY (`turma_coordenador_id`) REFERENCES `coordenadores` (`coordenador_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_turma_cursos1` FOREIGN KEY (`turma_curso_id`) REFERENCES `cursos` (`curso_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_turma_semestre1` FOREIGN KEY (`turma_semestre_id`) REFERENCES `semestres` (`semestre_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_turmas_nomes_das_turmas1` FOREIGN KEY (`turma_nome_da_turma_id`) REFERENCES `nomes_das_turmas` (`nome_da_turma_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `usuarios_e_niveis`
--
ALTER TABLE `usuarios_e_niveis`
  ADD CONSTRAINT `fk_usuarios_e_niveis_niveis_de_acesso1` FOREIGN KEY (`usuario_e_nivel_nivel_de_acesso_id`) REFERENCES `niveis_de_acessos` (`nivel_de_acesso_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuarios_e_niveis_usuarios1` FOREIGN KEY (`usuario_e_nivel_usuario_id`) REFERENCES `usuarios` (`usuario_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
