# homebrew-tap

## Casks

- [unique](https://github.com/ro-tex/unique): outputs the unique lines of its input.
- [aes256cli](https://github.com/ro-tex/aes256cli): encrypt and decrypt files with AES-256.

## How do I install these casks?

`brew install --cask ro-tex/tap/<cask>`

Or `brew tap ro-tex/tap` and then `brew install --cask <cask>`.

## Upgrading from the `unique` formula

`unique` used to be a formula and is now a cask. `brew update` only moves you
over automatically in some setups, so switch by hand:

```sh
brew uninstall --formula --force unique   # or unique@0 / unique@0.0 / unique@0.0.5
brew install --cask ro-tex/tap/unique
```
