/****** Object:  Table [dbo].[kontakt]    Script Date: 02/08/2013 20:10:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[kontakt]') AND type in (N'U'))
DROP TABLE [dbo].[kontakt]
GO
/****** Object:  Table [dbo].[news]    Script Date: 02/08/2013 20:10:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[news]') AND type in (N'U'))
DROP TABLE [dbo].[news]
GO
/****** Object:  Table [dbo].[news]    Script Date: 02/08/2013 20:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[news]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[news](
	[n_id] [int] IDENTITY(1,1) NOT NULL,
	[n_title] [nvarchar](50) COLLATE Danish_Norwegian_CI_AS NOT NULL,
	[n_date] [datetime] NOT NULL,
	[n_tekst] [text] COLLATE Danish_Norwegian_CI_AS NOT NULL,
	[n_picture] [nvarchar](50) COLLATE Danish_Norwegian_CI_AS NOT NULL,
 CONSTRAINT [PK_news] PRIMARY KEY CLUSTERED 
(
	[n_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[news] ON
INSERT [dbo].[news] ([n_id], [n_title], [n_date], [n_tekst], [n_picture]) VALUES (1, N'Fest på Musicon', CAST(0x0000A14E00000000 AS DateTime), N'<p>Eksempel for eksemplets skyld, tage alle grene. Hende nu at. Aldrig sjælden nok hul ællingemoderen konen var, imellem andegården, ville fordi og. Skovene hun mindre var var, snart at verden så, men hønsene hovedet skud da, katten og haglene den, selv sågar med hænderne forårsfriskt og gamle. Det fugle vandfladen alle blæsten du. Skræppeblade æbletræerne om og store ked ny. Det den. Ting op ikke skal vel rundt jeg, så kan, til være går i fløj.</p>', N'clb.jpg')
INSERT [dbo].[news] ([n_id], [n_title], [n_date], [n_tekst], [n_picture]) VALUES (2, N'22 mand høj', CAST(0x0000A15700000000 AS DateTime), N'<p>Eksempel for eksemplets skyld, tage alle grene. Hende nu at. Aldrig sjælden nok hul ællingemoderen konen var, imellem andegården, ville fordi og. Skovene hun mindre var var, snart at verden så, men hønsene hovedet skud da, katten og haglene den, selv sågar med hænderne forårsfriskt og gamle. Det fugle vandfladen alle blæsten du. Skræppeblade æbletræerne om og store ked ny. Det den. Ting op ikke skal vel rundt jeg, så kan, til være går i fløj.</p>', N'clb.jpg')
INSERT [dbo].[news] ([n_id], [n_title], [n_date], [n_tekst], [n_picture]) VALUES (3, N'Nice farver!', CAST(0x0000A16D00000000 AS DateTime), N'<p>Eksempel for eksemplets skyld, tage alle grene. Hende nu at. Aldrig sjælden nok hul ællingemoderen konen var, imellem andegården, ville fordi og. Skovene hun mindre var var, snart at verden så, men hønsene hovedet skud da, katten og haglene den, selv sågar med hænderne forårsfriskt og gamle. Det fugle vandfladen alle blæsten du. Skræppeblade æbletræerne om og store ked ny. Det den. Ting op ikke skal vel rundt jeg, så kan, til være går i fløj.</p>', N'db.jpg')
INSERT [dbo].[news] ([n_id], [n_title], [n_date], [n_tekst], [n_picture]) VALUES (4, N'Aldrig mere', CAST(0x0000A15000000000 AS DateTime), N'<p>Eksempel for eksemplets skyld, tage alle grene. Hende nu at. Aldrig sjælden nok hul ællingemoderen konen var, imellem andegården, ville fordi og. Skovene hun mindre var var, snart at verden så, men hønsene hovedet skud da, katten og haglene den, selv sågar med hænderne forårsfriskt og gamle. Det fugle vandfladen alle blæsten du. Skræppeblade æbletræerne om og store ked ny. Det den. Ting op ikke skal vel rundt jeg, så kan, til være går i fløj.</p>', N'db.jpg')
INSERT [dbo].[news] ([n_id], [n_title], [n_date], [n_tekst], [n_picture]) VALUES (6, N'Is og Kaffe', CAST(0x0000A15300000000 AS DateTime), N'Eksempel for eksemplets skyld, sagde bange blive gode så, mærkede gået svær genvordighed et for. En at kalkunæg ham ikke efter dukkede, på dog var, og nej sin så i. Jeg for var thi døren ælling, er dyr både sig store, hele selv ligge det skal. Nu fået den sige var landet. Om for som nøfles ingen gjorde forskrækkelse. Lige slog ting søer. Dog for vandet er er kommet, mose min nej, bedrøveligt til hårdt dejligt dog sagde, storken blev ælling. To kammerat, den ligger og, med kunne højt kan var grønne så, megen tror sig lagde, de tale hovedet. Og stolt du sig ham da få, spurgte havde sig var fra. Og er så to ægget gult den, sig hun, ligge de og lukkede og og. Få som ville passer, kommer mark, så ind var skaber er dejlighed hovedet, jeg jeg fik ikke det bare en, fordi mindre at det. Af dog blæsten to dejlige over i, når endelig men ud er hjul bøjede, i sprækken, begyndte stod.', N'db.jpg')
INSERT [dbo].[news] ([n_id], [n_title], [n_date], [n_tekst], [n_picture]) VALUES (7, N' neeeej tak!', CAST(0x0000A00500000000 AS DateTime), N'Eksempel for eksemplets skyld, sagde bange blive gode så, mærkede gået svær genvordighed et for. En at kalkunæg ham ikke efter dukkede, på dog var, og nej sin så i. Jeg for var thi døren ælling, er dyr både sig store, hele selv ligge det skal. Nu fået den sige var landet. Om for som nøfles ingen gjorde forskrækkelse. Lige slog ting søer. Dog for vandet er er kommet, mose min nej, bedrøveligt til hårdt dejligt dog sagde, storken blev ælling. To kammerat, den ligger og, med kunne højt kan var grønne så, megen tror sig lagde, de tale hovedet. Og stolt du sig ham da få, spurgte havde sig var fra. Og er så to ægget gult den, sig hun, ligge de og lukkede og og. Få som ville passer, kommer mark, så ind var skaber er dejlighed hovedet, jeg jeg fik ikke det bare en, fordi mindre at det. Af dog blæsten to dejlige over i, når endelig men ud er hjul bøjede, i sprækken, begyndte stod.', N'db.jpg')
SET IDENTITY_INSERT [dbo].[news] OFF
/****** Object:  Table [dbo].[kontakt]    Script Date: 02/08/2013 20:10:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[kontakt]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[kontakt](
	[k_id] [int] IDENTITY(1,1) NOT NULL,
	[k_navn] [nvarchar](50) COLLATE Danish_Norwegian_CI_AS NOT NULL,
	[k_email] [nvarchar](50) COLLATE Danish_Norwegian_CI_AS NOT NULL,
	[k_emne] [nvarchar](150) COLLATE Danish_Norwegian_CI_AS NOT NULL,
	[k_besked] [text] COLLATE Danish_Norwegian_CI_AS NOT NULL,
 CONSTRAINT [PK_kontakt] PRIMARY KEY CLUSTERED 
(
	[k_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
SET IDENTITY_INSERT [dbo].[kontakt] ON
INSERT [dbo].[kontakt] ([k_id], [k_navn], [k_email], [k_emne], [k_besked]) VALUES (1, N'Claus', N'clb@rts.dk', N'Test', N'test test etst')
INSERT [dbo].[kontakt] ([k_id], [k_navn], [k_email], [k_emne], [k_besked]) VALUES (2, N'Ida', N'ida@rts.dk', N'Test', N'test test test')
INSERT [dbo].[kontakt] ([k_id], [k_navn], [k_email], [k_emne], [k_besked]) VALUES (3, N'Claus', N'clb@rts.dk', N'Test', N'Test test test test')
INSERT [dbo].[kontakt] ([k_id], [k_navn], [k_email], [k_emne], [k_besked]) VALUES (4, N'Ida', N'clb@rts.dk', N'Test', N'TEST TESTE')
INSERT [dbo].[kontakt] ([k_id], [k_navn], [k_email], [k_emne], [k_besked]) VALUES (5, N'Linda', N'Linda@rts.dk', N'uuuuuu', N'uljkjl
ljljklkj')
INSERT [dbo].[kontakt] ([k_id], [k_navn], [k_email], [k_emne], [k_besked]) VALUES (6, N'Claus', N'Linda@rts.dk', N'Test', N'adsacxzvcxv')
INSERT [dbo].[kontakt] ([k_id], [k_navn], [k_email], [k_emne], [k_besked]) VALUES (7, N'Hans', N'hh@rts.dk', N'emne mene', N'Dette er en test mail')
INSERT [dbo].[kontakt] ([k_id], [k_navn], [k_email], [k_emne], [k_besked]) VALUES (8, N'sdkhfgsjhdgf', N'jgjhgjg', N'jhggjhg', N'jhgjhgj')
SET IDENTITY_INSERT [dbo].[kontakt] OFF
