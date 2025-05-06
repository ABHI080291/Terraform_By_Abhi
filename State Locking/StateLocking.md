**What is Terraform State Locking?**

State locking in Terraform is a mechanism that prevents simultaneous operations (like apply, destroy, etc.) on the same state file to avoid conflicts and corruption.

**📌 Why It's Needed:**

    Terraform uses a state file to track infrastructure.

    When multiple users or automation pipelines interact with the same state at the same time, it can lead to race conditions, inconsistent state, or deployment failures.

    Locking ensures only one operation can modify the state at any moment.

**🔒 How It Works:**

    When an operation is started, Terraform acquires a lock on the state file.

    Other operations are blocked or fail with a locking error until the lock is released.

**🛠️ Backends Supporting State Locking:**

    Terraform Cloud / Enterprise

    AWS S3 (with DynamoDB for locking)

    Consul

    Azure Blob Storage (via Terraform Enterprise)

**⚠️ Important Commands:**

    terraform apply / plan – Automatically acquire and release lock.

    terraform force-unlock <LOCK_ID> – Manually remove a lock (used with caution).

**✅ Advantages:**

    Prevents accidental state corruption.

    Ensures safe collaboration in team environments.

    Maintains consistency of infrastructure state.

**⚠️ Drawbacks:**

    Requires proper backend setup (e.g., S3 + DynamoDB).

    Can block operations if a lock is not released properly.

    Force unlocking may lead to inconsistencies if used carelessly.
