# Linux commands

```
ls | grep pentaho

du -sh /opt/*

du -sh /opt/

du -h --max-depth=1

du -sh /opt/pentaho/


```



You can copy the content of a folder /source to another existing folder /dest with the command

```
cp -a /source/. /dest/
```
The -a option is an improved recursive option, that preserve all file attributes, and also preserve symlinks.

The . at end of the source path is a specific cp syntax that allow to copy all files and folders, included hidden ones.
