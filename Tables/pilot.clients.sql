CREATE TABLE [pilot].[clients]
(
[clientID] [bigint] NOT NULL IDENTITY(1, 1),
[clientType] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[pilotID] [int] NOT NULL,
[createDate] [datetime2] (0) NOT NULL CONSTRAINT [DF__clients__createD__44FF419A] DEFAULT (getutcdate()),
[build] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[platformType] [varchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[appGUID] [varchar] (200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[appRunNumber] [bigint] NULL,
[heartbeat] [datetime2] (0) NOT NULL CONSTRAINT [DF__clients__heartbe__45F365D3] DEFAULT (getutcdate()),
[heartbeatCount] [int] NOT NULL CONSTRAINT [DF__clients__heartbe__46E78A0C] DEFAULT ((1))
) ON [PRIMARY]
GO
ALTER TABLE [pilot].[clients] ADD CONSTRAINT [clients_PK] PRIMARY KEY CLUSTERED  ([clientID]) ON [PRIMARY]
GO
GRANT SELECT ON  [pilot].[clients] TO [zzp_service]
GO
