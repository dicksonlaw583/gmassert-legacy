# GMAssert Legacy v2.0.0

Assertion scripts for GameMaker Studio 1.x

```
assert_not_equal("untested code", "good code", "You should have used GMAssert!");
```

## Introduction

GMAssert is a library containing useful assertions for debugging and automated unit testing. You can use it to alert you to undesirable runtime conditions, pause the debugger at that point for further inspection, or quickly test code for expected behaviour.

## Requirements

- GameMaker Studio 1.4.9999 only

If you use GameMaker Studio 2.x, please see [GMAssert 2](https://github.com/dicksonlaw583/gmassert2).

## Installation

- Download the latest GMEZ file from [the Releases page](https://github.com/dicksonlaw583/gmassert-legacy/releases).
- In the IDE, right-click on Extensions > Import Extension and select your downloaded GMEZ file.
- *Optional:* If you wish to use the debugger or customize failure handling behaviour, double-click the GMAssert extension in the IDE, select the Import Resources tab, and click "Import All". This will add the `__GMA_BREAKPOINT__` script needed to hook into assertion error messages.

## Contributing to GMAssert

- Clone this repository.
- Open the workbench in GameMaker Studio and make your additions/changes to the `GMAssert` extension. Also add corresponding tests to the `gmassert_test`.
- Open a pull request [here](https://github.com/dicksonlaw583/gmassert-legacy/issues).
