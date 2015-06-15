# auto_env
Activate your Python virtual env based on the current directory

## Installation

```bash
curl https://raw.githubusercontent.com/7imon7ays/auto_env/master/auto_env.sh >> ~/.bash_profile
```

## Usage
```bash
$: cd project_one
On: project_one
(env) $: # project_one env activated
(env) $: cd ../project_two
Off: project_one
On: project_two
(env) $: # project_two env activated
