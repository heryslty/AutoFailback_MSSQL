IF EXISTS (
			SELECT *
			FROM 
				sys.database_mirroring
			WHERE  
				@@SERVERNAME = 'NAMA_Server' 
				and mirroring_role_desc = 'PRINCIPAL'
				and mirroring_state_desc = 'SYNCHRONIZED'
				and DB_NAME(database_id) = 'Nama_DB'
			)
ALTER DATABASE Nama_DB SET PARTNER FAILOVER
GO
