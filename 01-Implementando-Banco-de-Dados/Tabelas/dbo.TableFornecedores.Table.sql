USE [Logistica]
GO

/****** Object:  Table [dbo].[TableFornecedores]    Script Date: 15/09/2025 22:04:40 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TableFornecedores](
	[CodigoDoFornecedor] [int] NOT NULL,
	[NomeDaEmpresa] [varchar](70) NOT NULL,
	[NomeDoContato] [varchar](70) NOT NULL,
	[CargoDoContato] [varchar](40) NULL,
	[Endereco] [varchar](50) NULL,
	[Cidade] [varchar](25) NULL,
	[Regiao] [varchar](25) NULL,
	[CEP] [char](15) NULL,
	[Pais] [varchar](25) NULL,
	[Telefone] [char](20) NULL,
	[Fax] [char](20) NULL,
 CONSTRAINT [PK_TableFornecedores] PRIMARY KEY CLUSTERED 
(
	[CodigoDoFornecedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

