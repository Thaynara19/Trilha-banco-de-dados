USE [Logistica]
GO

/****** Object:  Table [dbo].[TableCliente]    Script Date: 22/09/2025 11:39:53 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TableCliente](
	[CodigoDoCliente] [char](10) NOT NULL,
	[NomeDaEmpresa] [varchar](70) NOT NULL,
	[NomeDoContato] [varchar](70) NOT NULL,
	[CargoDoContato] [varchar](40) NOT NULL,
	[Endereco] [varchar](50) NOT NULL,
	[Cidade] [varchar](25) NOT NULL,
	[Regiao] [varchar](25) NOT NULL,
	[CEP] [char](15) NOT NULL,
	[Pais] [varchar](25) NOT NULL,
	[Telefone] [char](20) NOT NULL,
	[Fax] [char](20) NOT NULL,
 CONSTRAINT [PK_TableCliente] PRIMARY KEY CLUSTERED 
(
	[CodigoDoCliente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

