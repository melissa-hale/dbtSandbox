# dbt sandbox project

### Setup
- pull down the repo
- create a pyton virtual env using python 3.10
    - ```virtualenv -p python3 venv```
- pip install requirements
    - ```pip install -r requirements.txt```
-  you will also need a ```profiles.yml``` file in your ```~/.dbt``` directory that looks like this (ask Melissa for the values):
```
dbtlearn:
  outputs:
    dev:
      account: [Snowflake Account String]
      database: airbnb
      password: [password]
      role: transform
      schema: dev
      threads: 4
      type: snowflake
      user: dbt
      warehouse: COMPUTE_WH
  target: dev
  ```

### Using the project

- dbt test - to test any changes to models
- dbt run - to rebuild models when changed
    - optionally use the select switch to target only specific models:
    - ```dbt run --select [model name] ```
- accessing documentation (until I have it hosted)
    - ```dbt docs generate```
    - ```dbt docs serve```

### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices