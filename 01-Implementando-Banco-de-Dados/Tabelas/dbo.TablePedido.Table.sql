USE [Logistica]
GO

/****** Object:  Table [dbo].[TablePedido]    Script Date: 22/09/2025 21:12:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TablePedido](
	[NumeroDoPedido] [int] NOT NULL,
	[CodigoDoCliente] [char](10) NOT NULL,
	[CodigoDoFuncionario] [int] NOT NULL,
	[DataDoPedido] [date] NULL,
	[DataDeEntrega] [date] NULL,
	[DataDeEnvio] [date] NULL,
	[CodigoDaTransportadora] [int] NOT NULL,
	[Frete] [money] NULL,
	[NomeDoDestinatario] [varchar](50) NULL,
	[EnderecoDoDestinatario] [varchar](50) NULL,
	[CEPdeDestino] [char](15) NULL,
	[PaisDeDestino] [varchar](25) NULL,
	[CidadeDeDestino] [varchar](25) NULL,
	[RegiaoDeDestino] [varchar](25) NULL,
 CONSTRAINT [PK_TablePedido] PRIMARY KEY CLUSTERED 
(
	[NumeroDoPedido] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[TablePedido]  WITH CHECK ADD  CONSTRAINT [FK_TablePedido_TableCliente] FOREIGN KEY([CodigoDoCliente])
REFERENCES [dbo].[TableCliente] ([CodigoDoCliente])
GO

ALTER TABLE [dbo].[TablePedido] CHECK CONSTRAINT [FK_TablePedido_TableCliente]
GO

ALTER TABLE [dbo].[TablePedido]  WITH CHECK ADD  CONSTRAINT [FK_TablePedido_TableFuncionarios] FOREIGN KEY([CodigoDoFuncionario])
REFERENCES [dbo].[TableFuncionarios] ([CodigoDoFuncionario])
GO

ALTER TABLE [dbo].[TablePedido] CHECK CONSTRAINT [FK_TablePedido_TableFuncionarios]
GO

ALTER TABLE [dbo].[TablePedido]  WITH CHECK ADD  CONSTRAINT [FK_TablePedido_TableTransportadora] FOREIGN KEY([CodigoDaTransportadora])
REFERENCES [dbo].[TableTransportadora] ([CodigoDaTransportadora])
GO

ALTER TABLE [dbo].[TablePedido] CHECK CONSTRAINT [FK_TablePedido_TableTransportadora]
GO

