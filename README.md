# Tabulated List Extensions

**THIS PACKAGE IS DEPRECATED IN FAVOR OF https://github.com/politza/tablist**

## Introduction

This package provides useful utilities for packages using `tabulated-list-mode`.
It provides helpers to mark or unmark items in the list and work on the selection.

## Installation

The recommended way to install tabulated-list-extensions is through [MELPA](https://github.com/milkypostman/melpa).

Otherwise, simply add the files to your load-path and then `(require 'tle)`.

## Customization

The variable `tle-tag` contains the string used to show selected items (default `*`).

The face `tle-marked` is the face used for marked rows.

Customize them with `M-x customize-group tle` or `M-x customize-group tle-faces`.

## Commands

### Interactive

Enabling <kbd>M-x tle-mode</kbd> creates a keymap that calls the following functions.
You don't have to enable this mode to use the functions, it's just a mode that uses a keymap very close to `dired`.

| command                      | tle-mode keymap        | description                                             |
|------------------------------|------------------------|---------------------------------------------------------|
| tle-mark                     | <kbd>m</kbd>           | Mark the current row.                                   |
| tle-mark-all                 | <kbd>(not bound)</kbd> | Mark all rows.                                          |
| tle-unmark                   | <kbd>u</kbd>           | Unmark the current row.                                 |
| tle-unmark-all               | <kbd>U</kbd>           | Unmark all rows.                                        |
| tle-toggle                   | <kbd>(not bound)</kbd> | Toggle mark for the current row.                        |
| tle-resize-column            | <kbd>(not bound)</kbd> | Resize a column.                                        |
| tle-auto-resize-column       | <kbd>(not bound)</kbd> | Automatically resize column according to contents.      |
| tle-auto-resize-all-columns  | <kbd>(not bound)</kbd> | Automatically resize all columns according to contents. |

### Not interactive

| command               | description                                           |
|-----------------------|-------------------------------------------------------|
| tle-selected-p        | Returns true if the current row is selected.          |
| tle-selection-empty-p | Returns true if there is nothing selected.            |
| tle-selection-ids     | Get the marked items `tabulated-list-get-id` data.    |
| tle-selection-entries | Get the marked items `tabulated-list-get-entry` data. |

## Contributions welcome!

Either as suggestions or as pull requests by opening tickets on the
[issue tracker](https://github.com/Silex/tabulated-list-extensions/issues).
