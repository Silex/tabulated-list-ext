# Tabulated List Extensions

## Introduction

This package provides useful utilities for packages using `tabulated-list-mode`.
It provides helpers to mark or unmark items in the list and work on the selection.

## Installation

The recommended way to install tabulated-list-extensions is through [MELPA](https://github.com/milkypostman/melpa).

Otherwise, simply add the files to your load-path and then `(require 'tabulated-list-extensions)`.

## Customization

The variable `tle-tag` contains the string used to display selection (default `*`).

## Commands

### Interactive

Enabling <kbd>M-x tle-mode</kbd> creates a keymap that calls the following functions.
You don't have to enable this mode to use the functions, it's just a mode that uses a keymap very close to `dired`.

| command                | tle-mode keymap        | description                       |
|------------------------|------------------------|-----------------------------------|
| tle-mark               | <kbd>m</kbd>           | Mark the current row.             |
| tle-mark-all           | <kbd>(not bound)</kbd> | Mark all rows.                    |
| tle-unmark             | <kbd>u</kbd>           | Unmark the current row.           |
| tle-unmark-all         | <kbd>U</kbd>           | Unmark all rows.                  |
| tle-toggle             | <kbd>(not bound)</kbd> | Toggle mark for the current row.  |
| tle-toggle-all         | <kbd>t</kbd>           | Toggle all marks for all rows.    |

### Not interactive

| command               | description                                           |
|-----------------------|-------------------------------------------------------|
| tle-selected-p        | Returns true if the current row is selected.          |
| tle-selection-ids     | Get the marked items `tabulated-list-get-id` data.    |
| tle-selection-entries | Get the marked items `tabulated-list-get-entry` data. |

## Contributions welcome!

Either as suggestions or as pull requests by opening tickets on the
[issue tracker](https://github.com/Silex/tabulated-list-extensions/issues).
