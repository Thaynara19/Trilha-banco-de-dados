USE [Logistica]
GO

/****** Object:  Table [dbo].[TableProduto]    Script Date: 22/09/2025 21:15:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TableProduto](
	[CodigoDoProduto] [int] NOT NULL,
	[NomeDoProduto] [varchar](50) NOT NULL,
	[CodigoDoFornecedor] [int] NOT NULL,
	[CodigoDaCategoria] [int] NOT NULL,
	[QuantidadeDaCategoria] [char](30) NULL,
	[PrecoUnitario] [money] NULL,
	[UnidadeEmEstoque] [int] NULL,
	[UnidadesPedidas] [int] NULL,
	[NivelDeReposicao] [int] NULL,
	[Descontinuado] [int] NULL,
 CONSTRAINT [PK_TableProduto] PRIMARY KEY CLUSTERED 
(
	[CodigoDoProduto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[TableProduto]  WITH CHECK ADD  CONSTRAINT [FK_TableProduto_TableCategoria] FOREIGN KEY([CodigoDaCategoria])
REFERENCES [dbo].[TableCategoria] ([CodigoDaCategoria])
GO

ALTER TABLE [dbo].[TableProduto] CHECK CONSTRAINT [FK_TableProduto_TableCategoria]
GO

ALTER TABLE [dbo].[TableProduto]  WITH CHECK ADD  CONSTRAINT [FK_TableProduto_TableFornecedores] FOREIGN KEY([CodigoDoFornecedor])
REFERENCES [dbo].[TableFornecedores] ([CodigoDoFornecedor])
GO

ALTER TABLE [dbo].[TableProduto] CHECK CONSTRAINT [FK_TableProduto_TableFornecedores]
GO

