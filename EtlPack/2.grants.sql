GRANT ALL ON deapp.de_rc_snp_info  TO tm_cz;
GRANT ALL ON deapp.de_rc_snp_info  TO biomart_user;
GRANT ALL ON deapp.de_snp_gene_map  TO tm_cz;
GRANT ALL ON deapp.de_snp_gene_map  TO biomart_user;
GRANT ALL ON BIOMART_STAGE.BIO_ASSAY_ANALYSIS_GWAS  TO tm_cz;
GRANT ALL ON BIOMART_STAGE.BIO_ASSAY_ANALYSIS_EQTL  TO tm_cz;
grant create any table to tm_cz;
grant SELECT ANY TABLE to tm_cz;

GRANT insert, update, select ON biomart.bio_asy_analysis_eqtl_top50 to tm_cz;
GRANT insert, update, select ON biomart.bio_asy_analysis_eqtl_top50 to biomart_user;
grant INSERT, UPDATE, SELECT, DELETE on "BIOMART"."BIO_ASY_ANALYSIS_GWAS_TOP50" to "BIOMART_USER" ;
grant DELETE, INSERT, UPDATE, SELECT on "DEAPP"."DE_GENE_INFO" to "BIOMART_USER" ;

commit;
/
exit

