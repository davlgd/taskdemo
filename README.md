# Clever Cloud Task demo

Get this project code by cloning it from GitHub:

```bash
git clone https://github.com/davlgd/taskdemo.git
```

Create a Clever Cloud JS application, as a task:

```bash
clever create -t node --task "bash task.sh"
```

You can try the old school way:

```bash
clever create --type node
clever env set CC_TASK "true"
clever env set CC_RUN_COMMAND "bash task.sh"
```

Git push!

```bash
git add . && git commit -m "Initial commit"
clever deploy
```

One-liner addict, you can just obtain the result URL and open it in your browser:

```bash
open $(clever deploy | grep -o 'http[s]\?://sprunge[^ ]*') 
```

Depending on your operating system, the `open` command can differ. On Linux, you can use `xdg-open` instead.
