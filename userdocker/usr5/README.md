# Instructions.

```

see makefile

```

# ans.

If you make the folders first, before running the container, the permissions from the host are preserved.
No permissions problems.

If folders are created by volumne mount, then they will created by root, so user will have no permissions.
