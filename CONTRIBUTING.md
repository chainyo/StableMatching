## Contributing Guidelines

Thank you for your interest in contributing to our project. The following is a set of guidelines for contributing to our project.

Use your best judgement, and feel free to propose changes to this document in a pull request.

## Reporting Bugs

Before creating bug reports, please check a list of known issues to see if the problem has already been reported (or fixed in a `master` branch).

If you're unable to find an open issue addressing the problem, open a new one. Be sure to include a **descriptive title and a clear description**. Ideally, please provide:
- version you are using
- what you tried
- what was expected

If possible, add a **code sample** or an **executable test case demonstrating** the expected behavior that is not occurring.

*Note: If you find a Closed issue that seems like it is the same thing that you're experiencing, open a new issue and include a link to the original issue in the body of your new one. You can also comment on the closed issue to indicate that upstream should provide a new release with a fix.*

## Guidelines for Developpers

Please take a few minutes to read GitHub's guide on [How to Contribute to Open Source](https://opensource.guide/how-to-contribute/). It's a quick read, and it's a great way to introduce yourself to how things work behind the scenes in open-source projects.

### How to contribute code to our project

1. If you have no rights to contribute directly on the main repository, you will have to create a `fork` of the desired repository.
2. Create a new branch just for the bug/feature you are working on.
3. Once you have completed your work, create a `Pull Request`, ensuring that it meets the requirements listed below.

### Requirements for Pull Requests (PR)

- Follow git workflow:
    - Write reasonable commit messages (See [How to Write a Git Commit Message](https://chris.beams.io/posts/git-commit/))
    - Use common sense when creating commits, not too big, not too small. You can also squash them at the end of review. Try to think about the reviewer going through the pull request and commits. For example don't make too many changes that aren't related, e.g. resolving 2 unrelated issues in one PR or having all changes in one commit is not a good idea.
    - Rebasing lets you resolve any merge conflicts on your side. Also it certify that no mistakes were made by fixing conflicts.
    - You can mention issues that will be closed in a PR description, e.g.: Closes #123, Fixes #123; [more info](https://docs.github.com/en/enterprise/2.16/user/github/managing-your-work-on-github/closing-issues-using-keywords)
- Create a PR against the `master` branch.
- Use the `mergeit` label if you are really done with the PR. PRs are merged only if they have mergeit label **AND** are approved.

### Rebasing

To keep our git history clean and easy to navigate we rebase our branches before merging as mentioned above.

For more info regarding rebasing and merging see:
- [Atlassian tutorial for merging and rebasing](https://www.atlassian.com/git/tutorials/merging-vs-rebasing)
- [Git - When to Merge vs. When to Rebase](https://derekgourlay.com/blog/git-when-to-merge-vs-when-to-rebase/)
- [Git team workflows: merge or rebase?](https://www.atlassian.com/git/articles/git-team-workflows-merge-or-rebase)

---

Thank you for your interest, we hope to see your code soon!
