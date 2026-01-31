# Patch usage

This repository includes a ready-made patch file under `patches/`.

## Create the patch from this repo

```bash
git format-patch -1 HEAD -o ./patches
```

## Apply the patch in your local clone

```bash
git apply ./patches/0001-Remove-machine-ID-reset-flow-from-keep-alive-and-add.patch
```

If you want to apply it as a commit with author info preserved:

```bash
git am ./patches/0001-Remove-machine-ID-reset-flow-from-keep-alive-and-add.patch
```
