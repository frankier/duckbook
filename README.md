## DuckBook

This is a quick-and-dirty Binder environment with the dependencies from the
[from the DuckDB Jupyter notebook
guide](https://duckdb.org/docs/guides/python/jupyter.html). The idea is you can
use it locally using the `environment.yml` or can use it on Binder using
[`nbgitpuller`](http://nbgitpuller.link/?tab=binder&repo=https://github.com/frankier/duckbook&app=retrolab).

## Local usage

    $ git clone https://github.com/frankier/duckbook
    $ cd duckbook
    $ mamba env create -f environment.yml -n .

## Binder usage

[Use the nice nbgitpuller link generator.](http://nbgitpuller.link/?tab=binder&repo=https://github.com/frankier/duckbook&app=retrolab)

## Development

Make any package changes to `unresolved_environment.yml` and then run
`resolve_environment.sh`, which should automate the steps from [this guide to
generating strict Conda/Mamba versions for
repo2docker](https://repo2docker.readthedocs.io/en/latest/howto/export_environment.html#strict-version-export).
You will need to have repo2docker installed e.g. using `pipx install repo2docker`.
