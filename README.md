# Xerobills

**Xerobills Payment Platform**
Recharge, pay bills, movie and event tickets, and do a lot more.

## API Repository
The backend of this repository is powered by [Xerobills API](https://github.com/haqqman/xerobills-api)

# Git Flow Branch Strategy
The branches in Xerobills Git flow are intended for different purposes.

| Branch  | Purpose |
| ------------- | ------------- |
| sandbox-v1  | Develop new features & versions  |
| main  | Production  |

**While working with the Git flow branching strategy, there are six principles we adhere to ensure best practice and clean code.**

1. Create new descriptively-named branches cloned from '**sandbox-v1**' branch for new issues.
2. The new branch created should be very relatable to the associated issue, such as `add-new-payment-methods`.
3. Commit new work to the new branch locally and regularly push work to the remote.
4. To request feedback or help, or when you think your work is ready to merge into the '**sandbox-v1**' branch, open a pull request.
5. Ensure you link all associated issues with a pull request.
6. After your pull request has been reviewed and approved, it can be merged into the 'sandbox-v2' branch.
7. Once your work has been merged into the '**sandbox-v1**' branch, the source branch for the pull request can be safely deleted.

### Important! _Any code in the 'main' branch should be deployable for production._
