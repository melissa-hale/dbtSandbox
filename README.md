# dbt sandbox project

### Setup
- pull down the repo
- create a pyton virtual env using python 3.10
    - ```virtualenv -p python3 venv```
- pip install requirements
    - ```pip install -r requirements.txt```


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

small change to make sure the default user updates