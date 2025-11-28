
# Global GCP project IDs for secret management
ops_gcp_project_id = "pid-gousgnad-dplt-oplk-res01" # GCP project ID where dev environment secrets are stored

# Global GitHub integration settings
# github_installation_id = 72106891 # for Org https://github.com/GlobalPay-CoPilot
github_installation_id = 80949314 # for Org https://github.com/globalpayments-internal

# ===== ===== ===== ===== ===== ===== ===== =====
# Snowflake global connections (shared across projects)
# ===== ===== ===== ===== ===== ===== ===== =====
snowflake_connections = [
  {
    name                  = "Snowflake Open Lakehouse - gpn_dev"
    account               = "heartland-gpn_dev"
    database              = "LOTR" # default database is expected to be overridden by each project's config
    role                  = "OPENLAKEHOUSE_ANALYTICAL_ENGINEER_ROLE"
    warehouse             = "WH_REPORTING_2"
    oauth_gcp_project_var = "ops_gcp_project_id"
    oauth_client_id       = "snowflake_oauth_client_id__dev"
    oauth_client_secret   = "snowflake_oauth_client_secret__dev"
  },
  {
    name                  = "Snowflake Open Lakehouse - gpn_qa"
    account               = "heartland-gpn_qa"
    database              = "LOTR" # default database is expected to be overridden by each project's config
    role                  = "OPENLAKEHOUSE_ANALYTICAL_ENGINEER_ROLE"
    warehouse             = "WH_REPORTING_2"
    oauth_gcp_project_var = "ops_gcp_project_id"
    oauth_client_id       = "snowflake_oauth_client_id__qa"
    oauth_client_secret   = "snowflake_oauth_client_secret__qa"
  },
  {
    name                  = "Snowflake Open Lakehouse - gpn_cert"
    account               = "heartland-gpn_cert"
    database              = "LOTR" # default database is expected to be overridden by each project's config
    role                  = "OPENLAKEHOUSE_ANALYTICAL_ENGINEER_ROLE"
    warehouse             = "WH_REPORTING_2"
    oauth_gcp_project_var = "ops_gcp_project_id"
    oauth_client_id       = "snowflake_oauth_client_id__cert"
    oauth_client_secret   = "snowflake_oauth_client_secret__cert"
  },
  {
    name                  = "Snowflake Open Lakehouse - gpn_prod"
    account               = "heartland-gpn_prd"
    database              = "LOTR" # default database is expected to be overridden by each project's config
    role                  = "OPENLAKEHOUSE_ANALYTICAL_ENGINEER_ROLE"
    warehouse             = "WH_REPORTING_2"
    oauth_gcp_project_var = "ops_gcp_project_id"
    oauth_client_id       = "snowflake_oauth_client_id__prod"
    oauth_client_secret   = "snowflake_oauth_client_secret__prod"
  },
  {
    name                  = "Snowflake POC - Playground GSAP"
    account               = "heartland-heartlandbigcpeast"
    database              = "PLAYGROUND_GSAP"
    role                  = "REPORTING_2_DEVELOPER_ROLE"
    warehouse             = "WH_DBT"
    oauth_gcp_project_var = "ops_gcp_project_id"
    oauth_client_id       = "snowflake_oauth_client_id__poc"
    oauth_client_secret   = "snowflake_oauth_client_secret__poc"
  },
  {
    name                  = "Snowflake POC - Playground GMAS"
    account               = "heartland-heartlandbigcpeast"
    database              = "PLAYGROUND_GMAS"
    role                  = "REPORTING_2_DEVELOPER_ROLE"
    warehouse             = "WH_DBT"
    oauth_gcp_project_var = "ops_gcp_project_id"
    oauth_client_id       = "snowflake_oauth_client_id__poc"
    oauth_client_secret   = "snowflake_oauth_client_secret__poc"
  },
  {
    name                  = "Snowflake POC - Playground DIMS"
    account               = "heartland-heartlandbigcpeast"
    database              = "PLAYGROUND_DIMS"
    role                  = "REPORTING_2_DEVELOPER_ROLE"
    warehouse             = "WH_DBT"
    oauth_gcp_project_var = "ops_gcp_project_id"
    oauth_client_id       = "snowflake_oauth_client_id__poc"
    oauth_client_secret   = "snowflake_oauth_client_secret__poc"
  },
  {
    name                  = "Snowflake POC - Playground Risknet"
    account               = "heartland-heartlandbigcpeast"
    database              = "PLAYGROUND_RISKNET"
    role                  = "REPORTING_2_DEVELOPER_ROLE"
    warehouse             = "WH_DBT"
    oauth_gcp_project_var = "ops_gcp_project_id"
    oauth_client_id       = "snowflake_oauth_client_id__poc"
    oauth_client_secret   = "snowflake_oauth_client_secret__poc"
  },
  {
    name                  = "Snowflake_Reporting_2"
    account               = "heartland-heartlandbigcpeast"
    database              = "REPORTING_2_DEVELOPMENT"
    role                  = "REPORTING_2_DEV_SVC_ROLE"
    warehouse             = "WH_DBT"
    oauth_gcp_project_var = "ops_gcp_project_id"
    oauth_client_id       = "snowflake_oauth_client_id__poc"
    oauth_client_secret   = "snowflake_oauth_client_secret__poc"
  },
  {
    name                  = "Snowflake_gpn_dev"
    account               = "heartland-gpn_dev"
    database              = "LIQUIBASE"
    role                  = "LIQUIBASE_ADMIN_ROLE"
    warehouse             = "WH_LIQUIBASE"
    oauth_gcp_project_var = "ops_gcp_project_id"
    oauth_client_id       = "snowflake_oauth_client_id__dev"
    oauth_client_secret   = "snowflake_oauth_client_secret__dev"
  },
]

# ===== ===== ===== ===== ===== ===== ===== =====
# dbt Cloud project definitions
# ===== ===== ===== ===== ===== ===== ===== =====
dbt_projects = [
  {
    name                      = "LOTR"
    github_repo_name          = "dna-dbt-lotr"
    github_repo_branch        = "main"
    dbt_project_subfolder     = "dbt/dna-dbt-lotr"
    snowflake_connection_name = "Snowflake_gpn_dev"
    snowflake_database        = "LOTR_DEV"
    ops_gcp_project_var       = "ops_gcp_project_id"
    dbt_oauth_client_id       = "dbt_cloud_oauth_client_id__dev"
    dbt_oauth_client_secret   = "dbt_cloud_oauth_client_secret__dev"
    dbt_bearer_token          = "dbt_cloud_bearer_token__dev"
    dbt_develop_branch_name   = "develop"
  },
  {
    name                      = "GSAP"
    github_repo_name          = "dna-dbt-gsap"
    github_repo_branch        = "main"
    dbt_project_subfolder     = "dbt/dna-dbt-gsap"
    snowflake_connection_name = "Snowflake_gpn_dev"
    snowflake_database        = "GSAP_DEV"
    ops_gcp_project_var       = "ops_gcp_project_id"
    dbt_oauth_client_id       = "dbt_cloud_oauth_client_id__dev"
    dbt_oauth_client_secret   = "dbt_cloud_oauth_client_secret__dev"
    dbt_bearer_token          = "dbt_cloud_bearer_token__dev"
    dbt_develop_branch_name   = "develop"
  },
  {
    name                      = "GMAS"
    github_repo_name          = "dna-dbt-gmas"
    github_repo_branch        = "main"
    dbt_project_subfolder     = "dbt/dna-dbt-gmas"
    snowflake_connection_name = "Snowflake_gpn_dev"
    snowflake_database        = "GMAS_DEV"
    ops_gcp_project_var       = "ops_gcp_project_id"
    dbt_oauth_client_id       = "dbt_cloud_oauth_client_id__dev"
    dbt_oauth_client_secret   = "dbt_cloud_oauth_client_secret__dev"
    dbt_bearer_token          = "dbt_cloud_bearer_token__dev"
    dbt_develop_branch_name   = "develop"
  },
]
