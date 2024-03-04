
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 03/04/2024 16:04:58
-- Generated from EDMX file: C:\Users\opilane\source\repos\ADO_jooksjad\ADO_jooksjad\jooksjad.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Jooksjad];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'JooksmineSet'
CREATE TABLE [dbo].[JooksmineSet] (
    [JooksmineId] int IDENTITY(1,1) NOT NULL,
    [Eesnimi] nvarchar(max)  NOT NULL,
    [Perenimi] nvarchar(max)  NOT NULL,
    [Tulemus] int  NOT NULL,
    [Veergrupp] nvarchar(max)  NOT NULL,
    [Voistlus_VoistlusId] int  NOT NULL
);
GO

-- Creating table 'VoistlusSet'
CREATE TABLE [dbo].[VoistlusSet] (
    [VoistlusId] int IDENTITY(1,1) NOT NULL,
    [Paev] datetime  NOT NULL,
    [Voistlusnimi] nvarchar(max)  NOT NULL,
    [Linn] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [JooksmineId] in table 'JooksmineSet'
ALTER TABLE [dbo].[JooksmineSet]
ADD CONSTRAINT [PK_JooksmineSet]
    PRIMARY KEY CLUSTERED ([JooksmineId] ASC);
GO

-- Creating primary key on [VoistlusId] in table 'VoistlusSet'
ALTER TABLE [dbo].[VoistlusSet]
ADD CONSTRAINT [PK_VoistlusSet]
    PRIMARY KEY CLUSTERED ([VoistlusId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Voistlus_VoistlusId] in table 'JooksmineSet'
ALTER TABLE [dbo].[JooksmineSet]
ADD CONSTRAINT [FK_VoistlusJooksmine]
    FOREIGN KEY ([Voistlus_VoistlusId])
    REFERENCES [dbo].[VoistlusSet]
        ([VoistlusId])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_VoistlusJooksmine'
CREATE INDEX [IX_FK_VoistlusJooksmine]
ON [dbo].[JooksmineSet]
    ([Voistlus_VoistlusId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------