# Isabelle Skeleton
This session sets up the command `skeleton` for Isabelle.
When invoked, it produces a proof skeleton into the output marked up so that on click that skeleton replaces the command.
The particular skeleton is chosen with a name after the `skeleton` command.

Currently there are two patterns:
- `skeleton basic` is replaced with:
    ```
    proof
      show ?thesis
        sorry
    qed
    ```
- `skeleton dash` is replaced with:
    ```
    proof -
      show ?thesis
        sorry
    qed
    ```

To use the command you need to:
- Add the repository root to your Isabelle installation's `ROOTS` file.
- Import `Skeleton.Skeleton` in your current theory.

The command is meant only for proof development, so the import should be safe to remove once you no longer need the command.
