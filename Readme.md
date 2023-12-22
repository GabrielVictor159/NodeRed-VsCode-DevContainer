# Local Environment for NODERED development

## Runs!

Starting a VSCode - Dev Container, the Editor UI are avaiable on: `http://localhost:1880/`

Run a test flow request: 
```bash
curl http://localhost:1880/debug
{"now":"2023-12-22T00:16:53.113Z","teste":"testando"}
```
 
## Environment Variables:

| key            | default value | description             |
| -------------- | ------------- | ----------------------- |
| EDITOR_ENABLED | false         | Enable Editor UI        |
| EDITOR_THEME   | default       | [theme-collection](https://github.com/node-red-contrib-themes/theme-collection/tree/screenshots)        |
| PORT           | 1880          | Default Http Port       |
| LOG_LEVEL      | info          | [Log Level](#log-level) |

## Build a docker file 

`docker build . -t <tag value>` this docker has EDITOR_ENABLED by default false, and image alpine to use in nodered runtime.

### Log Level:
Level of logging to be recorded. Options are:
* fatal - only those errors which make the application unusable should be recorded
* error - record errors which are deemed fatal for a particular request + fatal errors
* warn - record problems which are non fatal + errors + fatal errors
* info - record information about the general running of the application + warn + error + fatal errors
* debug - record information which is more verbose than info + info + warn + error + fatal errors
* trace - record very detailed logging + debug + info + warn + error + fatal errors
* off - turn off all logging (doesn't affect metrics or audit)