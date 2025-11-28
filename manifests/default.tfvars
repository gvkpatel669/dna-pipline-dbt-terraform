
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
    role                  = "OPENLAKEHOUSE_ANALYTICAL_ENGINEER_ROLE"
    warehouse             = "WH_REPORTING_2"
    oauth_gcp_project_var = "ops_gcp_project_id"
    oauth_client_id       = "snowflake_oauth_client_id__dev"
    oauth_client_secret   = "snowflake_oauth_client_secret__dev"
  },
  {
    name                  = "Snowflake_gpn_qa"
    account               = "heartland-gpn_qa"
    database              = "LIQUIBASE"
    role                  = "OPENLAKEHOUSE_ANALYTICAL_ENGINEER_ROLE"
    warehouse             = "WH_REPORTING_2"
    oauth_gcp_project_var = "ops_gcp_project_id"
    oauth_client_id       = "snowflake_oauth_client_id__qa"
    oauth_client_secret   = "snowflake_oauth_client_secret__qa"
  },
  {
    name                  = "Snowflake_gpn_cert"
    account               = "heartland-gpn_cert"
    database              = "LIQUIBASE"
    role                  = "OPENLAKEHOUSE_ANALYTICAL_ENGINEER_ROLE"
    warehouse             = "WH_REPORTING_2"
    oauth_gcp_project_var = "ops_gcp_project_id"
    oauth_client_id       = "snowflake_oauth_client_id__cert"
    oauth_client_secret   = "snowflake_oauth_client_secret__cert"
  }

]

# ===== ===== ===== ===== ===== ===== ===== =====
# Multiple dbt projects configuration
# ===== ===== ===== ===== ===== ===== ===== =====
dbt_projects = [
  # ----- ----- ----- ----- ----- ----- ----- -----
  # Templates
  # ----- ----- ----- ----- ----- ----- ----- -----
  {
    project_name                     = "dbt_template_project"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-template-project.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "blank"
    job_templates                    = ["none"]
    use_custom_branch                = false
  },
  # ----- ----- ----- ----- ----- ----- ----- -----
  # Playground / Training projects
  # ----- ----- ----- ----- ----- ----- ----- -----
  {
    project_name                     = "dbt_demo"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-demo.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "demo"
    job_templates                    = ["ci_demo", "cd_demo"]
    ide_environment_name             = "Development"
  },
  {
    project_name                     = "dbt_playground_gsap"
    git_repo_remote_url              = "https://hlprd@dev.azure.com/hlprd/Business%20Enablement/_git/dbt_playground_gsap"
    git_provider                     = "azure_devops"
    global_snowflake_connection_name = "Snowflake POC - Playground GSAP"
    enable_dev_sso                   = true
    environment_template             = "playground"
    job_template                     = ["none"]
    ide_environment_name             = "Development"
  },
  {
    project_name                     = "dbt_playground_gmas"
    git_repo_remote_url              = "https://hlprd@dev.azure.com/hlprd/Business%20Enablement/_git/dbt_playground_gmas"
    git_provider                     = "azure_devops"
    global_snowflake_connection_name = "Snowflake POC - Playground GMAS"
    enable_dev_sso                   = true
    environment_template             = "playground"
    job_template                     = ["none"]
    ide_environment_name             = "Development"
  },
  {
    project_name                     = "dbt_playground_dims"
    git_repo_remote_url              = "https://hlprd@dev.azure.com/hlprd/Business%20Enablement/_git/dbt_playground_dims"
    git_provider                     = "azure_devops"
    global_snowflake_connection_name = "Snowflake POC - Playground DIMS"
    enable_dev_sso                   = true
    environment_template             = "playground"
    job_template                     = ["none"]
    ide_environment_name             = "Development"
  },
  {
    project_name                     = "dbt_playground_risknet"
    git_repo_remote_url              = "https://hlprd@dev.azure.com/hlprd/Business%20Enablement/_git/dbt_playground_risknet"
    git_provider                     = "azure_devops"
    global_snowflake_connection_name = "Snowflake POC - Playground Risknet"
    enable_dev_sso                   = true
    environment_template             = "playground"
    job_template                     = ["none"]
    ide_environment_name             = "Development"
  },
  # ----- ----- ----- ----- ----- ----- ----- -----
  # Common projects
  # ----- ----- ----- ----- ----- ----- ----- -----
  {
    project_name                     = "dbt_common_tables"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-common-tables.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },
  {
    project_name                     = "dbt_common_utils"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-common-utils.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },
  {
    project_name                     = "data_quality"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-data-quality.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_Reporting_2"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },
  {
    project_name                     = "dbt_semantic_test"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-semantic-layer.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_Reporting_2"
    enable_dev_sso                   = true
    environment_template             = "blank"
    job_templates                    = ["none"]
    ide_environment_name             = "Development"
    use_custom_branch                = false
    deployment_environments = [
      {
        name                 = "dev"
        dbt_environment_type = "general"
        connection_name      = "Snowflake_Reporting_2"
        snowflake_user       = "svc_dbt_01"
        private_key          = "snowflake_svc_dbt_01_private_key__poc"
        pk_passphrase        = "snowflake_svc_dbt_01_pk_passphrase__poc"
        snowflake_database   = "LOTR"
        snowflake_schema     = "PUBLIC"
        snowflake_role       = "OPENLAKEHOUSE_ANALYTICAL_ENGINEER_ROLE"
        snowflake_warehouse  = "WH_REPORTING_2"
        branch               = "development"
      },
    ]
    environment_variables = [
      {
        # DBT_MY_ENV feeds the generate_schema_name dbt macro that is responsible for determining the Snowflake database schema
        name                  = "DBT_MY_ENV"
        project_default_value = ""
        development_ide_value = "ide"
        general               = "dev"
        staging               = "cert"
        production            = "prod"
      }
    ]
  },
  # ----- ----- ----- ----- ----- ----- ----- -----
  # Individual projects
  # ----- ----- ----- ----- ----- ----- ----- -----
  {
    project_name                     = "dbt_dims"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-dims.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },
  {
    project_name                     = "dbt_disputes"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-disputes.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },
  {
    project_name                     = "dbt_dw_next1"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-dw-next1.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },
  {
    project_name                     = "dbt_fiserv_beyond"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-fiserv-beyond.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },
  {
    project_name                     = "dbt_gmas"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-gmas.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },
  {
    project_name                     = "dbt_gnap"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-gnap.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },
  {
    project_name                     = "dbt_gsap"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-gsap.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },
  {
    project_name                     = "dbt_lotr"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-lotr.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },
  {
    project_name                     = "dbt_merchant_churn"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-merchant-churn.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },
  {
    project_name                     = "dbt_merchant_portal"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-merchant-portal.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },
  {
    project_name                     = "dbt_merchant_portal_bot"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-merchant-portal-bot.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },
  {
    project_name                     = "dbt_merchant_repricing"
    git_repo_remote_url              = "https://hlprd@dev.azure.com/hlprd/Business%20Enablement/_git/dna_dbt_merchant_repricing"
    git_provider                     = "azure_devops"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["none"]
    ide_environment_name             = "Development"
  },
  {
    project_name                     = "dbt_moss"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-moss.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },
  {
    project_name                     = "dbt_ontrak"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-ontrak.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },
  {
    project_name                     = "dbt_precision_pricing"
    git_repo_remote_url              = "https://hlprd@dev.azure.com/hlprd/Business%20Enablement/_git/dna_dbt_precision_pricing"
    git_provider                     = "azure_devops"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["none"]
    ide_environment_name             = "Development"
  },
  {
    project_name                     = "dbt_savedesk"
    git_repo_remote_url              = "https://hlprd@dev.azure.com/hlprd/Business%20Enablement/_git/dna_dbt_savedesk"
    git_provider                     = "azure_devops"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["none"]
  },
  {
    project_name                     = "dbt_tmas"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-tmas.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
  },
  {
    project_name                     = "dbt_procan"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-procan.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },
  {
    project_name                     = "dbt_a360_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-a360-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_accuity_kyc_outbound"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-accuity-kyc-outbound.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_active_network_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-active-network-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_amex_outbound"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-amex-outbound.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_amex_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-amex-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_apexx_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-apexx-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_ascentium_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-ascentium-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_assoc_clearing_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-assoc-clearing-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_axosoft_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-axosoft-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_bci_pagos_outbound"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-bci-pagos-outbound.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_bers_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-bers-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_bin_service"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-bin-service.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_broomfield_dw_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-broomfield-dw-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_changepoint_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-changepoint-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_check_services_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-check-services-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_citi_app"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-citi-app.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_comercia_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-comercia-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_cpay_central_station_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-cpay-central-station-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_creditshield_app"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-creditshield-app.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_csuite_analytics_app"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-csuite-analytics-app.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_dims_app"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-dims-app.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_discover_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-discover-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_dmsales"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-dmsales.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_ebi_ptd_integration"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-ebi-ptd-integration.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_econnection_dw_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-econnection-dw-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_salesforce_ecsi"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-salesforce-ecsi.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_eglobal_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-eglobal-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_epbcs_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-epbcs-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_esafe_app"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-esafe-app.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_eus_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-eus-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_evo_bi_app"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-evo-bi-app.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_evo_multipay_app"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-evo-multipay-app.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_express_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-express-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_firstdata_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-firstdata-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_fiserv_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-fiserv-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_gaam_app"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-gaam-app.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_genius"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-genius.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_gpapi_app"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-gpapi-app.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_gpapi_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-gpapi-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_gpecom_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-gpecom-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_hcsdb"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-hcsdb.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_hcsist_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-hcsist-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_hic_app"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-hic-app.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_highlander_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-highlander-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_hsbc_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-hsbc-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_hubspot_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-hubspot-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_infocentral_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-infocentral-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_interchange_compliance_app"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-interchange-compliance-app.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_map_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-map-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_mastercard_accounts_outbound"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-mastercard-accounts-outbound.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_mastercard_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-mastercard-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_mcscloud_newton_hss_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-mcscloud-newton-hss-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_mcstech_dw_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-mcstech-dw-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_mea_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-mea-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_mealviewer_hss_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-mealviewer-hss-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_mercury_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-mercury-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_merlin_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-merlin-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_mms_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-mms-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_mosaicfoh_hss_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-mosaicfoh-hss-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_mstr_reporting_app "
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-mstr-reporting-app.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_my_accounts_app"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-my-accounts-app.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_my_accounts_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-my-accounts-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_netsuite_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-netsuite-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_ods_amexdb_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-ods-amexdb-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_ods_brms_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-ods-brms-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_ods_colonnade"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-ods-colonnade.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_ods_hierarchydb_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-ods-hierarchydb-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_ods_master_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-ods-master-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_ods_outbound"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-ods-outbound.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_ods_payroll_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-ods-payroll-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_ods_portico"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-ods-portico.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_ods_sagacity"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-ods-sagacity.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_ods_salesportal_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-ods-salesportal-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_ods_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-ods-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_ods_visanettxn_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-ods-visanettxn-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_omnipay_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-omnipay-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_openedge_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-openedge-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_oracle_financial_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-oracle-financial-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_oracle_fusion_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-oracle-fusion-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_orgunitdb_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-orgunitdb-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_outreach_hss_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-outreach-hss-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_passport"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-passport.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_payment_analytics_outbound"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-payment-analytics-outbound.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_paypal_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-paypal-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_pbp_outbound"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-pbp-outbound.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_pindebit"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-pindebit.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_pindebitrecon2"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-pindebitrecon2.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_planet_payment_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-planet-payment-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_pnc_outbound"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-pnc-outbound.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_pnc_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-pnc-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_propay_accounting_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-propay-accounting-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_propay_app"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-propay-app.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_propay_cts_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-propay-cts-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_propay_next1_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-propay-next1-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_propay_procan_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-propay-procan-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_propay_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-propay-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_prosa_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-prosa-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_risklab_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-risklab-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_risknet_outbound"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-risknet-outbound.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_rtr_app"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-rtr-app.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_salesforce_gp_direct"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-salesforce-gp-direct.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_salesforce_gpi"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-salesforce-gpi.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_salesforce_greater_giving"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-salesforce-greater-giving.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_salesforce_school_solutions"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-salesforce-school-solutions.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_salesforce_sicom_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-salesforce-sicom-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_schoolcolors_hss_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-schoolcolors-hss-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_sentral_ocenia_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-sentral-ocenia-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_sierra"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-sierra.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_submitter_incoming_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-submitter-incoming-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_swampfox_ivr_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-swampfox-ivr-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_touchnet_app"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-touchnet-app.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_touchnet_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-touchnet-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_union_pay_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-union-pay-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_vapsnws_dw_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-vapsnws-dw-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_visa_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-visa-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_wellsfargo_outbound"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-wellsfargo-outbound.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_wellsfargo_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-wellsfargo-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_workday_hss_src"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-workday-hss-src.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  },

  {
    project_name                     = "dbt_uba_workstream_manager_app"
    git_repo_remote_url              = "git://github.com/globalpayments-internal/dna-dbt-uba-workstream-manager-app.git"
    git_provider                     = "github"
    global_snowflake_connection_name = "Snowflake_gpn_dev"
    enable_dev_sso                   = true
    environment_template             = "open_lakehouse"
    job_templates                    = ["ci_parse", "cd_build"]
    ide_environment_name             = "Development"
  }
]

# ===== ===== ===== ===== ===== ===== ===== =====
# Environment templates configuration
# Define standardized configurations for different project types
# ===== ===== ===== ===== ===== ===== ===== =====
environment_templates = {
  # ----- ----- ----- ----- ----- ----- ----- -----
  # Standard template to be used for the majority of new dbt projects
  # ----- ----- ----- ----- ----- ----- ----- -----
  "open_lakehouse" = {
    # IDE environment configuration -- users will use their own credentials for authentication & authorization
    ide_environment_name = "Development"
    ide_branch           = "development"

    # Deployment environments configuration
    deployment_environments = [
      {
        name                 = "gpn_dev"
        dbt_environment_type = "general"
        connection_name      = "Snowflake Open Lakehouse - gpn_dev"
        snowflake_user       = "svc_dbt_01"
        private_key          = "snowflake_svc_dbt_01_private_key__dev"
        pk_passphrase        = ""
        snowflake_database   = "LOTR"
        snowflake_schema     = "PUBLIC"
        snowflake_role       = "DBT_SVC_ROLE"
        snowflake_warehouse  = "WH_REPORTING_2"
        branch               = "development"
      },
      {
        name                 = "gpn_qa"
        dbt_environment_type = "general"
        connection_name      = "Snowflake Open Lakehouse - gpn_qa"
        snowflake_user       = "svc_dbt_01"
        private_key          = "snowflake_svc_dbt_01_private_key__qa"
        pk_passphrase        = ""
        snowflake_database   = "LOTR"
        snowflake_schema     = "PUBLIC"
        snowflake_role       = "DBT_SVC_ROLE"
        snowflake_warehouse  = "WH_REPORTING_2"
        branch               = "qa"
      },
      {
        name                 = "gpn_cert"
        dbt_environment_type = "staging"
        connection_name      = "Snowflake Open Lakehouse - gpn_cert"
        snowflake_user       = "svc_dbt_01"
        private_key          = "snowflake_svc_dbt_01_private_key__cert"
        pk_passphrase        = ""
        snowflake_database   = "LOTR"
        snowflake_schema     = "PUBLIC"
        snowflake_role       = "DBT_SVC_ROLE"
        snowflake_warehouse  = "WH_REPORTING_2"
        branch               = "cert"
      },
      {
        name                 = "gpn_prod"
        dbt_environment_type = "production"
        connection_name      = "Snowflake Open Lakehouse - gpn_prod"
        snowflake_user       = "svc_dbt_01"
        private_key          = "snowflake_svc_dbt_01_private_key__prod"
        pk_passphrase        = ""
        snowflake_database   = "LOTR"
        snowflake_schema     = "PUBLIC"
        snowflake_role       = "DBT_SVC_ROLE"
        snowflake_warehouse  = "WH_REPORTING_2"
      }
    ]

    # Environment variables for all environments
    environment_variables = [
      {
        # DBT_MY_ENV feeds the generate_schema_name dbt macro that is responsible for determining the Snowflake database schema
        name                  = "DBT_MY_ENV"
        project_default_value = ""
        development_ide_value = "ide"
        general               = "dev"
        staging               = "cert"
        production            = "prod"
      }
    ]
  }

  # ----- ----- ----- ----- ----- ----- ----- -----
  # Exception template used to manage skewed environments (poc/dev; dev/qa; qa/cert)
  # **IMPORTANT**: To avoid job metadata loss, standard environments should be **ADDED** to this template and jobs migrated manually before blindly switching to the reporting_2 template...
  # ----- ----- ----- ----- ----- ----- ----- -----
  "reporting_2_skewed" = {
    # IDE environment configuration -- users will use their own credentials for authentication & authorization
    ide_branch = "development"

    # Deployment environments configuration
    deployment_environments = [
      {
        name                 = "dev"
        dbt_environment_type = "general"
        connection_name      = "Snowflake_Reporting_2"
        snowflake_user       = "SVC_DBT_REPORTING_2_DEV"
        private_key          = "snowflake_svc_dbt_01_private_key__poc"
        pk_passphrase        = "snowflake_svc_dbt_01_pk_passphrase__poc"
        snowflake_database   = "LOTR"
        snowflake_schema     = "PUBLIC"
        snowflake_role       = "REPORTING_2_DEV_SVC_ROLE"
        snowflake_warehouse  = "WH_DBT"
        branch               = "development"
      },
      {
        name                 = "gpn_dev/qa_branch"
        dbt_environment_type = "general"
        connection_name      = "Snowflake_gpn_dev"
        snowflake_user       = "svc_dbt_01"
        private_key          = "snowflake_svc_dbt_01_private_key__dev"
        pk_passphrase        = ""
        snowflake_database   = "LOTR"
        snowflake_schema     = "PUBLIC"
        snowflake_role       = "DBT_SVC_ROLE"
        snowflake_warehouse  = "WH_REPORTING_2"
        branch               = "qa"
      },
      {
        name                 = "gpn_qa/cert_branch"
        dbt_environment_type = "general"
        connection_name      = "Snowflake_gpn_qa"
        snowflake_user       = "svc_dbt_01"
        private_key          = "snowflake_svc_dbt_01_private_key__qa"
        pk_passphrase        = ""
        snowflake_database   = "LOTR"
        snowflake_schema     = "PUBLIC"
        snowflake_role       = "DBT_SVC_ROLE"
        snowflake_warehouse  = "WH_REPORTING_2"
        branch               = "cert"
      },
      {
        name                 = "gpn_dev"
        dbt_environment_type = "general"
        connection_name      = "Snowflake Open Lakehouse - gpn_dev"
        snowflake_user       = "svc_dbt_01"
        private_key          = "snowflake_svc_dbt_01_private_key__dev"
        pk_passphrase        = ""
        snowflake_database   = "LOTR"
        snowflake_schema     = "PUBLIC"
        snowflake_role       = "DBT_SVC_ROLE"
        snowflake_warehouse  = "WH_REPORTING_2"
        branch               = "development"
      },
      {
        name                 = "gpn_qa"
        dbt_environment_type = "general"
        connection_name      = "Snowflake Open Lakehouse - gpn_qa"
        snowflake_user       = "svc_dbt_01"
        private_key          = "snowflake_svc_dbt_01_private_key__qa"
        pk_passphrase        = ""
        snowflake_database   = "LOTR"
        snowflake_schema     = "PUBLIC"
        snowflake_role       = "DBT_SVC_ROLE"
        snowflake_warehouse  = "WH_REPORTING_2"
        branch               = "qa"
      },
      {
        name                 = "gpn_cert"
        dbt_environment_type = "staging"
        connection_name      = "Snowflake Open Lakehouse - gpn_cert"
        snowflake_user       = "svc_dbt_01"
        private_key          = "snowflake_svc_dbt_01_private_key__cert"
        pk_passphrase        = ""
        snowflake_database   = "LOTR"
        snowflake_schema     = "PUBLIC"
        snowflake_role       = "DBT_SVC_ROLE"
        snowflake_warehouse  = "WH_REPORTING_2"
        branch               = "cert"
      },
      {
        name                 = "gpn_prod"
        dbt_environment_type = "production"
        connection_name      = "Snowflake Open Lakehouse - gpn_prod"
        snowflake_user       = "svc_dbt_01"
        private_key          = "snowflake_svc_dbt_01_private_key__prod"
        pk_passphrase        = ""
        snowflake_database   = "LOTR"
        snowflake_schema     = "PUBLIC"
        snowflake_role       = "DBT_SVC_ROLE"
        snowflake_warehouse  = "WH_REPORTING_2"
      }
    ]

    # Environment variables for all environments
    environment_variables = [
      {
        # DBT_MY_ENV feeds the generate_schema_name dbt macro that is responsible for determining the Snowflake database schema
        name                  = "DBT_MY_ENV"
        project_default_value = ""
        development_ide_value = "ide"
        general               = "dev"
        staging               = "cert"
        production            = "prod"
      }
    ]
  }

  # ----- ----- ----- ----- ----- ----- ----- -----
  # Demo template with simple, simulated envs, all pointing to gpn_dev
  # ----- ----- ----- ----- ----- ----- ----- -----
  "demo" = {
    # IDE environment configuration
    ide_branch = "development"

    # Deployment environments configuration
    deployment_environments = [
      {
        name                 = "simulated_dev"
        dbt_environment_type = "general"
        connection_name      = "Snowflake Open Lakehouse - gpn_dev"
        snowflake_user       = "svc_dbt_01"
        private_key          = "snowflake_svc_dbt_01_private_key__dev"
        pk_passphrase        = ""
        snowflake_database   = "DEMO"
        snowflake_schema     = "PUBLIC"
        snowflake_role       = "DBT_SVC_ROLE"
        snowflake_warehouse  = "WH_REPORTING_2"
        branch               = "development"
      },
      {
        name                 = "simulated_prod"
        dbt_environment_type = "production"
        connection_name      = "Snowflake Open Lakehouse - gpn_dev"
        snowflake_user       = "svc_dbt_01"
        private_key          = "snowflake_svc_dbt_01_private_key__dev"
        pk_passphrase        = ""
        snowflake_database   = "DEMO"
        snowflake_schema     = "PUBLIC"
        snowflake_role       = "DBT_SVC_ROLE"
        snowflake_warehouse  = "WH_REPORTING_2"
      }
    ]

    # Environment variables
    environment_variables = [
      {
        # DBT_MY_ENV feeds the generate_schema_name dbt macro that is responsible for determining the Snowflake database schema
        name                  = "DBT_MY_ENV"
        project_default_value = ""
        development_ide_value = "ide"
        general               = "dev"
        staging               = "cert"
        production            = "prod"
      }
    ]
  }

  # ----- ----- ----- ----- ----- ----- ----- -----
  # Playground template with simple, simulated envs, all pointing to poc (heartlandbigcpeast)
  # ----- ----- ----- ----- ----- ----- ----- -----
  "playground" = {
    # IDE environment configuration
    ide_environment_name = "Development"

    # Deployment environments configuration
    deployment_environments = [
      {
        name                 = "simulated_prod"
        dbt_environment_type = "production"
        connection_name      = null # Uses global connection from project
        snowflake_user       = "SVC_DBT_PLAYGROUND"
        private_key          = "snowflake_svc_dbt_01_private_key__poc_playground"
        pk_passphrase        = "snowflake_svc_dbt_01_pk_passphrase__poc_playground"
        snowflake_database   = "playground_gmas"
        snowflake_schema     = "PUBLIC"
        snowflake_role       = "PLAYGROUND_DBT_DEVELOPER_ROLE"
        snowflake_warehouse  = "WH_DBT"
        branch               = null
      }
    ]

    # Environment variables
    environment_variables = [
      {
        # DBT_MY_ENV feeds the generate_schema_name dbt macro that is responsible for determining the Snowflake database schema
        name                  = "DBT_MY_ENV"
        project_default_value = ""
        development_ide_value = "ide"
        general               = "dev"
        staging               = "cert"
        production            = "prod"
      }
    ]
  }

  # ----- ----- ----- ----- ----- ----- ----- -----
  # Completely blank template with no default values
  # ----- ----- ----- ----- ----- ----- ----- -----
  "blank" = {
    deployment_environments = []
    environment_variables   = []
  }
}

# ===== ===== ===== ===== ===== ===== ===== =====
# Job templates configuration
# Define standardized job configurations for different project types
# ===== ===== ===== ===== ===== ===== ===== =====
job_templates = {
  # ----- ----- ----- ----- ----- ----- ----- -----
  # CI template - parse-based continuous integration
  # ----- ----- ----- ----- ----- ----- ----- -----
  "ci_parse" = {
    ci = {
      job_type = "ci"
      steps = [
        "dbt parse"
      ]
      description = "Terraform Managed: Auto-triggered CI for open pull requests"
      target_name            = "ci"
      compare_changes        = false
      run_lint               = true
      errors_on_lint_failure = false
      generate_docs          = false
      triggers = {
        gpn_dev = {
          custom_branch_only   = true
          github_webhook       = true
          git_provider_webhook = true
          schedule             = false
          on_merge             = false
        }
        gpn_qa = {
          custom_branch_only   = true
          github_webhook       = true
          git_provider_webhook = true
          schedule             = false
          on_merge             = false
        }
        gpn_cert = {
          custom_branch_only   = true
          github_webhook       = true
          git_provider_webhook = true
          schedule             = false
          on_merge             = false
        }
        gpn_prod = {
          custom_branch_only   = false
          github_webhook       = true
          git_provider_webhook = true
          schedule             = false
          on_merge             = false
        }
      }
    }
  }
  # ----- ----- ----- ----- ----- ----- ----- -----
  # CD template - build-based continuous deployment
  # ----- ----- ----- ----- ----- ----- ----- -----
  "cd_build" = {
    cd = {
      job_type    = "merge"
      steps       = ["dbt build --select state:modified+"]
      description = "Terraform Managed: Auto-triggered CD for merges into target branch"
      target_name            = "cd"
      compare_changes        = false
      run_lint               = false
      errors_on_lint_failure = false
      generate_docs          = true
      triggers = {
        gpn_dev = {
          custom_branch_only   = false
          github_webhook       = false
          git_provider_webhook = false
          schedule             = false
          on_merge             = true
        }
        gpn_qa = {
          custom_branch_only   = false
          github_webhook       = false
          git_provider_webhook = false
          schedule             = false
          on_merge             = true
        }
        gpn_cert = {
          custom_branch_only   = false
          github_webhook       = false
          git_provider_webhook = false
          schedule             = false
          on_merge             = true
        }
        gpn_prod = {
          custom_branch_only   = false
          github_webhook       = false
          git_provider_webhook = false
          schedule             = false
          on_merge             = true
        }
      }
    }
  }
  # ----- ----- ----- ----- ----- ----- ----- -----
  # CI demo jobs have different environment names
  # ----- ----- ----- ----- ----- ----- ----- -----
  "ci_demo" = {
    ci = {
      job_type = "ci"
      steps = [
        "dbt parse"
      ]
      description = "Terraform Managed: Auto-triggered CI for open pull requests"
      target_name            = "ci"
      compare_changes        = false
      run_lint               = true
      errors_on_lint_failure = false
      generate_docs          = false
      triggers = {
        simulated_dev = {
          custom_branch_only   = true
          github_webhook       = true
          git_provider_webhook = true
          schedule             = false
          on_merge             = false
        }
        simulated_prod = {
          custom_branch_only   = false
          github_webhook       = true
          git_provider_webhook = true
          schedule             = false
          on_merge             = false
        }
      }
    }
  }
  # ----- ----- ----- ----- ----- ----- ----- -----
  # CD template - build-based continuous deployment
  # ----- ----- ----- ----- ----- ----- ----- -----
  "cd_demo" = {
    cd = {
      job_type    = "merge"
      steps       = ["dbt build --select state:modified+"]
      description = "Terraform Managed: Auto-triggered CD for merges into target branch"
      target_name            = "cd"
      compare_changes        = false
      run_lint               = false
      errors_on_lint_failure = false
      generate_docs          = true
      triggers = {
        simulated_dev = {
          custom_branch_only   = false
          github_webhook       = false
          git_provider_webhook = false
          schedule             = false
          on_merge             = true
        }
        simulated_prod = {
          custom_branch_only   = false
          github_webhook       = false
          git_provider_webhook = false
          schedule             = false
          on_merge             = true
        }
      }
    }
  }
  # Completely empty template with no automatically created jobs
  "none" = {}
}

# ===== ===== ===== ===== ===== ===== ===== =====
# dbt RBAC configuration
# Define groups and their permissions for access control across all dbt projects
#
# Permission Codes Reference:
# - account_admin, account_viewer, admin, analyst, billing_admin
# - database_admin, developer, git_admin, job_admin, job_runner  
# - job_viewer, member, metadata_only, owner, project_creator
# - readonly, security_admin, semantic_layer_only, stakeholder
# - team_admin, webhooks_only
#
# Environment Categories for writable_environment_categories:
# Only supported by permission codes: analyst, database_admin, developer, git_admin, team_admin
# - "development"  (named development environment, i.e., the dbt Cloud IDE; 1 per project)
# - "other"        (any deployment environment of type "General" in the dbt Cloud UI; 0 or more per project)
# - "staging"      (named deployment environment; 1 per project)
# - "production"   (named deployment environment; 1 per project)
# - "all"          (empty is treated as "all")
#
# Project Targeting:
# - all_projects = true:  Apply permissions to all projects in the account
# - all_projects = false: Use project_names array to specify which projects
# - project_names = ["Project A", "Project B"]: List of project names (when all_projects = false)
# ===== ===== ===== ===== ===== ===== ===== =====

dbt_rbac_groups = [
  {
    name               = "DBT Account Admin"
    assign_by_default  = false
    sso_mapping_groups = []
    members = [
      "dylan.taylor@globalpay.com",
      "justin.lewis@e-hps.com",
      "marc.trosclair@e-hps.com",
      "platformengineeringsecurity+dbtCloudSVCAccount@e-hps.com",
      "prakharsingh.sengar@e-hps.com",
      "William.Cummins@e-hps.com",
    ]
    group_permissions = [
      {
        permission_set                  = "account_admin" # Full account administration
        all_projects                    = true
        writable_environment_categories = []
      }
    ]
  },
  {
    name               = "DBT Security Admin"
    assign_by_default  = false
    sso_mapping_groups = []
    members = [

      "vinay.gone@globalpay.com",
    ]
    group_permissions = [
      {
        permission_set                  = "security_admin" # Ability to manage users, groups, tokens, etc
        all_projects                    = true
        writable_environment_categories = []
      }
    ]
  },
  {
    name               = "DNA Read Only"
    assign_by_default  = true # group will autopopulate members without having to run terraform apply, keep all users managed via TF in this group even if they also have other groups
    sso_mapping_groups = []
    members = [
      "adarsh.kumar1@globalpay.com",
      "aishwarya.jaiswal@globalpay.com",
      "aishwarya.khandagale1@globalpay.com",
      "ajitksingh@tsys.com",
      "akshay.mehta@globalpay.com",
      "alexandru.stoica@globalpay.com",
      "amitk@tsys.com",
      "ana.diniz@globalpay.com",
      "arshukla@tsys.com",
      "ashwin.khade@globalpay.com",
      "ayan.das@globalpay.com",
      "b.venkatachalapathy@e-hps.com",
      "bao.ho@globalpay.com",
      "benjamin.pryor@globalpay.com",
      "bhavesh.gowani@globalpay.com",
      "brandon.coulter@globalpay.com",
      "brian.sizemore@e-hps.com",
      "daniel.pereira@globalpay.com",
      "David.Melo@globalpay.com",
      "david2.smith@e-hps.com",
      "Diana.Campbell@e-hps.com",
      "dileep.cherukuri@e-hps.com",
      "dsonawane@tsys.com",
      "dunakhep@tsys.com",
      "dylan.taylor@globalpay.com",
      "Francisco.Barros@globalpay.com",
      "ganesh.bhor@globalpay.com",
      "grant.fitzgerald@globalpay.com",
      "gulabchandsache@tsys.com",
      "harish.chivukula@globalpay.com",
      "harshitha.nagendra@e-hps.com",
      "jerrod.stutzman@e-hps.com",
      "juhi.gaikwad@globalpay.com",
      "justin.lewis@e-hps.com",
      "kanchanpatil@tsys.com",
      "lahari.kotapati@e-hps.com",
      "latika.dharmik@globalpay.com",
      "lindsay.lester@e-hps.com",
      "marc.trosclair@e-hps.com",
      "meghana.nagendra@e-hps.com",
      "michael.castillo@globalpay.com",
      "milind.yashwantchavan@globalpay.com",
      "mohammad.hussain@globalpay.com",
      "nkatode@tsys.com",
      "nmahajan@tsys.com",
      "nsisodiya@tsys.com",
      "ogethe@tsys.com",
      "pawansing.patil@globalpay.com",
      "pkamat@tsys.com",
      "platformengineeringsecurity+dbtCloudSVCAccount@e-hps.com",
      "prakharsingh.sengar@e-hps.com",
      "praveenkumarnanavare@globalpay.com",
      "prpatil@tsys.com",
      "ragupta@tsys.com",
      "ramesh.nimmanagoti@e-hps.com",
      "rmanedeshmukh@tsys.com",
      "robin.gupta@globalpay.com",
      "saksham.singh@globalpay.com",
      "sakshi.rayu@globalpay.com",
      "sandip.jagdale@globalpay.com",
      "sasikumar.dhanavelu@e-hps.com",
      "sbajpai@tsys.com",
      "sharak@tsys.com",
      "shivam.patel@e-hps.com",
      "shruti.banawadikar@globalpay.com",
      "shubhangi.murkute@globalpay.com",
      "snangare@tsys.com",
      "snehlata@tsys.com",
      "sonal.patade@globalpay.com",
      "steven.caruthers@e-hps.com",
      "sutiwari@tsys.com",
      "svaiangankar@tsys.com",
      "Tejas.Thorat@globalpay.com",
      "tmehrotra@tsys.com",
      "vinay.gone@globalpay.com",
      "vivek.kasbekar@globalpay.com",
      "wesley.fisher@globalpay.com",
      "William.Cummins@e-hps.com",
      "ykolate@tsys.com",
      "zachary.zhou@e-hps.com"
    ]
    group_permissions = [
      {
        permission_set                  = "readonly" # Read-only access is default for all users
        all_projects                    = true
        writable_environment_categories = []
      }
    ]
  },
  {
    name               = "DNA Analytical Engineer"
    assign_by_default  = false
    sso_mapping_groups = []
    members = [
      "adarsh.kumar1@globalpay.com",
      "aishwarya.jaiswal@globalpay.com",
      "aishwarya.khandagale1@globalpay.com",
      "ajitksingh@tsys.com",
      "akshay.mehta@globalpay.com",
      "alexandru.stoica@globalpay.com",
      "amitk@tsys.com",
      "ana.diniz@globalpay.com",
      "arshukla@tsys.com",
      "ayan.das@globalpay.com",
      "b.venkatachalapathy@e-hps.com",
      "bao.ho@globalpay.com",
      "benjamin.pryor@globalpay.com",
      "bhavesh.gowani@globalpay.com",
      "brian.sizemore@e-hps.com",
      "daniel.pereira@globalpay.com",
      "David.Melo@globalpay.com",
      "dileep.cherukuri@e-hps.com",
      "dsonawane@tsys.com",
      "dunakhep@tsys.com",
      "Francisco.Barros@globalpay.com",
      "ganesh.bhor@globalpay.com",
      "gulabchandsache@tsys.com",
      "harish.chivukula@globalpay.com",
      "harshitha.nagendra@e-hps.com",
      "juhi.gaikwad@globalpay.com",
      "kanchanpatil@tsys.com",
      "lahari.kotapati@e-hps.com",
      "michael.castillo@globalpay.com",
      "mohammad.hussain@globalpay.com",
      "nkatode@tsys.com",
      "nmahajan@tsys.com",
      "nsisodiya@tsys.com",
      "ogethe@tsys.com",
      "pkamat@tsys.com",
      "praveenkumarnanavare@globalpay.com",
      "prpatil@tsys.com",
      "ragupta@tsys.com",
      "ramesh.nimmanagoti@e-hps.com",
      "rmanedeshmukh@tsys.com",
      "robin.gupta@globalpay.com",
      "saksham.singh@globalpay.com",
      "sandip.jagdale@globalpay.com",
      "sasikumar.dhanavelu@e-hps.com",
      "sbajpai@tsys.com",
      "sharak@tsys.com",
      "shivam.patel@e-hps.com",
      "shruti.banawadikar@globalpay.com",
      "shubhangi.murkute@globalpay.com",
      "snangare@tsys.com",
      "snehlata@tsys.com",
      "sonal.patade@globalpay.com",
      "steven.caruthers@e-hps.com",
      "sutiwari@tsys.com",
      "tmehrotra@tsys.com",
      "vinay.gone@globalpay.com",
      "vivek.kasbekar@globalpay.com",
      "wesley.fisher@globalpay.com",
      "ykolate@tsys.com"
    ]
    group_permissions = [
      {
        permission_set                  = "developer" # All projects developer access, including write access to dev & qa, and read access to cert & prod
        all_projects                    = true
        writable_environment_categories = ["development", "other", "staging", "production"]
      }
    ]
  },
  {
    name               = "DNA Support Engineer"
    assign_by_default  = false
    sso_mapping_groups = []
    members            = []
    group_permissions = [
      {
        permission_set                  = "developer" # All projects support access, including write access to prod & cert, and read access to dev & qa
        all_projects                    = true
        writable_environment_categories = ["staging", "production"]
      }
    ]
  },
  {
    name               = "DNA Git Admin"
    assign_by_default  = false
    sso_mapping_groups = []
    members = [
      "ajitksingh@tsys.com",
      "vinay.gone@globalpay.com"
    ]
    group_permissions = [
      {
        permission_set                  = "git_admin"
        all_projects                    = true
        writable_environment_categories = ["all"]
      }
    ]
  },
  {
    name               = "GP Finance"
    assign_by_default  = false
    sso_mapping_groups = []
    members = [
      # members listed by commented out until the legacy dbt projects have been imported (e.g., dbt_asra, dbt_product, etc)
      #      "akshitha.kukudala@e-hps.com",
      #      "corrie.martinson@e-hps.com",
      #      "jonathan.conklin@e-hps.com",
      #      "natalie.jensen@e-hps.com",
      #      "neil.simmons@e-hps.com",
      #      "paul.lester@e-hps.com",
      #      "summer.franczek@e-hps.com"
    ]
    group_permissions = [
      {
        permission_set                  = "developer" # Project-specific access for teams outside of the Data & Analytics organization
        all_projects                    = false
        project_names                   = ["dbt_precision_pricing", "dbt_merchant_repricing", "dbt_savedesk"]
        writable_environment_categories = ["all"]
      }
    ]
  }
]
