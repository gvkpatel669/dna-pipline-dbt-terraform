dbt_projects = [
  {
    project_name                      = "dbt_tmas_real_test"
    git_repo_remote_url               = "https://github.com/gvkpatel669/dna-dbt-tmas-real-test.git"
    environment_template              = "open_lakehouse"
    job_templates                     = ["ci_parse", "cd_build"]
    global_snowflake_connection_name  = "Snowflake_gpn_dev"
  }
]