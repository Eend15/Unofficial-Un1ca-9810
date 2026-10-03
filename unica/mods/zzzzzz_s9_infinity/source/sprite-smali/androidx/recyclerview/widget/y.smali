.class public final Landroidx/recyclerview/widget/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/a;
.implements LU3/L;
.implements Lkotlinx/coroutines/flow/b;
.implements LU3/l;
.implements LK/p;


# instance fields
.field public final synthetic d:I

.field public e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/recyclerview/widget/y;->d:I

    sparse-switch p1, :sswitch_data_0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    return-void

    .line 5
    :sswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    return-void

    .line 7
    :sswitch_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    .line 9
    invoke-static {p1}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p1

    .line 10
    iput-object p1, p0, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    return-void

    .line 11
    :sswitch_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    return-void

    .line 13
    :sswitch_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_3
        0xd -> :sswitch_2
        0xe -> :sswitch_1
        0x11 -> :sswitch_0
    .end sparse-switch
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/recyclerview/widget/y;->d:I

    iput-object p2, p0, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lh4/n;)V
    .locals 1

    const/16 v0, 0xc

    iput v0, p0, Landroidx/recyclerview/widget/y;->d:I

    const-string v0, "packageFragment"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lu4/g;)V
    .locals 1

    const/16 v0, 0x13

    iput v0, p0, Landroidx/recyclerview/widget/y;->d:I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "this$0"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    return-void
.end method

.method public static e(Lf0/c;)V
    .locals 1

    const-string v0, "CREATE TABLE IF NOT EXISTS `Dependency` (`work_spec_id` TEXT NOT NULL, `prerequisite_id` TEXT NOT NULL, PRIMARY KEY(`work_spec_id`, `prerequisite_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE , FOREIGN KEY(`prerequisite_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    invoke-virtual {p0, v0}, Lf0/c;->K(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_Dependency_work_spec_id` ON `Dependency` (`work_spec_id`)"

    invoke-virtual {p0, v0}, Lf0/c;->K(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_Dependency_prerequisite_id` ON `Dependency` (`prerequisite_id`)"

    invoke-virtual {p0, v0}, Lf0/c;->K(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `last_enqueue_time` INTEGER NOT NULL, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `run_in_foreground` INTEGER NOT NULL, `out_of_quota_policy` INTEGER NOT NULL, `period_count` INTEGER NOT NULL DEFAULT 0, `generation` INTEGER NOT NULL DEFAULT 0, `required_network_type` INTEGER NOT NULL, `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB NOT NULL, PRIMARY KEY(`id`))"

    invoke-virtual {p0, v0}, Lf0/c;->K(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)"

    invoke-virtual {p0, v0}, Lf0/c;->K(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_last_enqueue_time` ON `WorkSpec` (`last_enqueue_time`)"

    invoke-virtual {p0, v0}, Lf0/c;->K(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `WorkTag` (`tag` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`tag`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    invoke-virtual {p0, v0}, Lf0/c;->K(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_WorkTag_work_spec_id` ON `WorkTag` (`work_spec_id`)"

    invoke-virtual {p0, v0}, Lf0/c;->K(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `generation` INTEGER NOT NULL DEFAULT 0, `system_id` INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`, `generation`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    invoke-virtual {p0, v0}, Lf0/c;->K(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `WorkName` (`name` TEXT NOT NULL, `work_spec_id` TEXT NOT NULL, PRIMARY KEY(`name`, `work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    invoke-virtual {p0, v0}, Lf0/c;->K(Ljava/lang/String;)V

    const-string v0, "CREATE INDEX IF NOT EXISTS `index_WorkName_work_spec_id` ON `WorkName` (`work_spec_id`)"

    invoke-virtual {p0, v0}, Lf0/c;->K(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress` BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )"

    invoke-virtual {p0, v0}, Lf0/c;->K(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS `Preference` (`key` TEXT NOT NULL, `long_value` INTEGER, PRIMARY KEY(`key`))"

    invoke-virtual {p0, v0}, Lf0/c;->K(Ljava/lang/String;)V

    const-string v0, "CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)"

    invoke-virtual {p0, v0}, Lf0/c;->K(Ljava/lang/String;)V

    const-string v0, "INSERT OR REPLACE INTO room_master_table (id,identity_hash) VALUES(42, \'5181942b9ebc31ce68dacb56c16fd79f\')"

    invoke-virtual {p0, v0}, Lf0/c;->K(Ljava/lang/String;)V

    return-void
.end method

.method public static k(Lf0/c;)LI/d;
    .locals 28

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    new-instance v10, Lc0/a;

    const/4 v6, 0x1

    const/4 v7, 0x1

    const-string v4, "work_spec_id"

    const-string v5, "TEXT"

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v3, v10

    invoke-direct/range {v3 .. v9}, Lc0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "work_spec_id"

    invoke-virtual {v1, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lc0/a;

    const/4 v14, 0x1

    const/4 v15, 0x2

    const-string v12, "prerequisite_id"

    const-string v13, "TEXT"

    const/16 v16, 0x0

    const/16 v17, 0x1

    move-object v11, v4

    invoke-direct/range {v11 .. v17}, Lc0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "prerequisite_id"

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v2}, Ljava/util/HashSet;-><init>(I)V

    new-instance v12, Lc0/b;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const-string v13, "id"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const-string v8, "CASCADE"

    const-string v9, "CASCADE"

    const-string v7, "WorkSpec"

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lc0/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v4, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v6, Lc0/b;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    const-string v16, "CASCADE"

    const-string v17, "CASCADE"

    const-string v15, "WorkSpec"

    move-object v14, v6

    invoke-direct/range {v14 .. v19}, Lc0/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, v2}, Ljava/util/HashSet;-><init>(I)V

    new-instance v7, Lc0/d;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const-string v9, "ASC"

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    const-string v11, "index_Dependency_work_spec_id"

    const/4 v12, 0x0

    invoke-direct {v7, v11, v12, v8, v10}, Lc0/d;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v7, Lc0/d;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    const-string v10, "index_Dependency_prerequisite_id"

    invoke-direct {v7, v10, v12, v5, v8}, Lc0/d;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v5, Lc0/e;

    const-string v7, "Dependency"

    invoke-direct {v5, v7, v1, v4, v6}, Lc0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    invoke-static {v0, v7}, Lc0/e;->a(Lf0/c;Ljava/lang/String;)Lc0/e;

    move-result-object v1

    invoke-virtual {v5, v1}, Lc0/e;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "\n Found:\n"

    if-nez v4, :cond_0

    new-instance v0, LI/d;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Dependency(androidx.work.impl.model.Dependency).\n Expected:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v12}, LI/d;-><init>(Ljava/lang/String;Z)V

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/HashMap;

    const/16 v4, 0x1b

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    new-instance v4, Lc0/a;

    const-string v15, "id"

    const-string v16, "TEXT"

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x1

    move-object v14, v4

    invoke-direct/range {v14 .. v20}, Lc0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lc0/a;

    const-string v22, "state"

    const-string v23, "INTEGER"

    const/16 v26, 0x0

    const/16 v27, 0x1

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v21, v4

    invoke-direct/range {v21 .. v27}, Lc0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "state"

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lc0/a;

    const-string v15, "worker_class_name"

    const-string v16, "TEXT"

    const/16 v18, 0x0

    move-object v14, v4

    invoke-direct/range {v14 .. v20}, Lc0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "worker_class_name"

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lc0/a;

    const-string v15, "input_merger_class_name"

    const-string v16, "TEXT"

    const/16 v17, 0x0

    move-object v14, v4

    invoke-direct/range {v14 .. v20}, Lc0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "input_merger_class_name"

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lc0/a;

    const-string v15, "input"

    const-string v16, "BLOB"

    const/16 v17, 0x1

    move-object v14, v4

    invoke-direct/range {v14 .. v20}, Lc0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "input"

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lc0/a;

    const-string v15, "output"

    const-string v16, "BLOB"

    move-object v14, v4

    invoke-direct/range {v14 .. v20}, Lc0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "output"

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lc0/a;

    const-string v15, "initial_delay"

    const-string v16, "INTEGER"

    move-object v14, v4

    invoke-direct/range {v14 .. v20}, Lc0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "initial_delay"

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lc0/a;

    const-string v15, "interval_duration"

    const-string v16, "INTEGER"

    move-object v14, v4

    invoke-direct/range {v14 .. v20}, Lc0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "interval_duration"

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lc0/a;

    const-string v15, "flex_duration"

    const-string v16, "INTEGER"

    move-object v14, v4

    invoke-direct/range {v14 .. v20}, Lc0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "flex_duration"

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lc0/a;

    const-string v15, "run_attempt_count"

    const-string v16, "INTEGER"

    move-object v14, v4

    invoke-direct/range {v14 .. v20}, Lc0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "run_attempt_count"

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lc0/a;

    const-string v15, "backoff_policy"

    const-string v16, "INTEGER"

    move-object v14, v4

    invoke-direct/range {v14 .. v20}, Lc0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "backoff_policy"

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lc0/a;

    const-string v15, "backoff_delay_duration"

    const-string v16, "INTEGER"

    move-object v14, v4

    invoke-direct/range {v14 .. v20}, Lc0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "backoff_delay_duration"

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lc0/a;

    const-string v15, "last_enqueue_time"

    const-string v16, "INTEGER"

    move-object v14, v4

    invoke-direct/range {v14 .. v20}, Lc0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "last_enqueue_time"

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lc0/a;

    const-string v15, "minimum_retention_duration"

    const-string v16, "INTEGER"

    move-object v14, v4

    invoke-direct/range {v14 .. v20}, Lc0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v7, "minimum_retention_duration"

    invoke-virtual {v1, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lc0/a;

    const-string v15, "schedule_requested_at"

    const-string v16, "INTEGER"

    move-object v14, v4

    invoke-direct/range {v14 .. v20}, Lc0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v7, "schedule_requested_at"

    invoke-virtual {v1, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lc0/a;

    const-string v15, "run_in_foreground"

    const-string v16, "INTEGER"

    move-object v14, v4

    invoke-direct/range {v14 .. v20}, Lc0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "run_in_foreground"

    invoke-virtual {v1, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lc0/a;

    const-string v15, "out_of_quota_policy"

    const-string v16, "INTEGER"

    move-object v14, v4

    invoke-direct/range {v14 .. v20}, Lc0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "out_of_quota_policy"

    invoke-virtual {v1, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lc0/a;

    const-string v15, "period_count"

    const-string v16, "INTEGER"

    const-string v19, "0"

    move-object v14, v4

    invoke-direct/range {v14 .. v20}, Lc0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "period_count"

    invoke-virtual {v1, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lc0/a;

    const-string v15, "generation"

    const-string v16, "INTEGER"

    const-string v19, "0"

    move-object v14, v4

    invoke-direct/range {v14 .. v20}, Lc0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v8, "generation"

    invoke-virtual {v1, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lc0/a;

    const-string v15, "required_network_type"

    const-string v16, "INTEGER"

    const/16 v19, 0x0

    move-object v14, v4

    invoke-direct/range {v14 .. v20}, Lc0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v10, "required_network_type"

    invoke-virtual {v1, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lc0/a;

    const-string v15, "requires_charging"

    const-string v16, "INTEGER"

    move-object v14, v4

    invoke-direct/range {v14 .. v20}, Lc0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v10, "requires_charging"

    invoke-virtual {v1, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lc0/a;

    const-string v15, "requires_device_idle"

    const-string v16, "INTEGER"

    move-object v14, v4

    invoke-direct/range {v14 .. v20}, Lc0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v10, "requires_device_idle"

    invoke-virtual {v1, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lc0/a;

    const-string v15, "requires_battery_not_low"

    const-string v16, "INTEGER"

    move-object v14, v4

    invoke-direct/range {v14 .. v20}, Lc0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v10, "requires_battery_not_low"

    invoke-virtual {v1, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lc0/a;

    const-string v15, "requires_storage_not_low"

    const-string v16, "INTEGER"

    move-object v14, v4

    invoke-direct/range {v14 .. v20}, Lc0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v10, "requires_storage_not_low"

    invoke-virtual {v1, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lc0/a;

    const-string v15, "trigger_content_update_delay"

    const-string v16, "INTEGER"

    move-object v14, v4

    invoke-direct/range {v14 .. v20}, Lc0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v10, "trigger_content_update_delay"

    invoke-virtual {v1, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lc0/a;

    const-string v15, "trigger_max_content_delay"

    const-string v16, "INTEGER"

    move-object v14, v4

    invoke-direct/range {v14 .. v20}, Lc0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v10, "trigger_max_content_delay"

    invoke-virtual {v1, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lc0/a;

    const-string v15, "content_uri_triggers"

    const-string v16, "BLOB"

    move-object v14, v4

    invoke-direct/range {v14 .. v20}, Lc0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v10, "content_uri_triggers"

    invoke-virtual {v1, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v12}, Ljava/util/HashSet;-><init>(I)V

    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10, v2}, Ljava/util/HashSet;-><init>(I)V

    new-instance v11, Lc0/d;

    filled-new-array {v7}, [Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const-string v15, "index_WorkSpec_schedule_requested_at"

    invoke-direct {v11, v15, v12, v7, v14}, Lc0/d;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    invoke-virtual {v10, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v7, Lc0/d;

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    const-string v14, "index_WorkSpec_last_enqueue_time"

    invoke-direct {v7, v14, v12, v5, v11}, Lc0/d;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    invoke-virtual {v10, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v5, Lc0/e;

    const-string v7, "WorkSpec"

    invoke-direct {v5, v7, v1, v4, v10}, Lc0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    invoke-static {v0, v7}, Lc0/e;->a(Lf0/c;Ljava/lang/String;)Lc0/e;

    move-result-object v1

    invoke-virtual {v5, v1}, Lc0/e;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v0, LI/d;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WorkSpec(androidx.work.impl.model.WorkSpec).\n Expected:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v12}, LI/d;-><init>(Ljava/lang/String;Z)V

    return-object v0

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    new-instance v4, Lc0/a;

    const/16 v17, 0x1

    const/16 v18, 0x1

    const-string v15, "tag"

    const-string v16, "TEXT"

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object v14, v4

    invoke-direct/range {v14 .. v20}, Lc0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v5, "tag"

    invoke-virtual {v1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lc0/a;

    const/16 v18, 0x2

    const-string v15, "work_spec_id"

    const-string v16, "TEXT"

    move-object v14, v4

    invoke-direct/range {v14 .. v20}, Lc0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/util/HashSet;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    new-instance v7, Lc0/b;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    const-string v16, "CASCADE"

    const-string v17, "CASCADE"

    const-string v15, "WorkSpec"

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Lc0/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, v5}, Ljava/util/HashSet;-><init>(I)V

    new-instance v10, Lc0/d;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const-string v15, "index_WorkTag_work_spec_id"

    invoke-direct {v10, v15, v12, v11, v14}, Lc0/d;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    invoke-virtual {v7, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v10, Lc0/e;

    const-string v11, "WorkTag"

    invoke-direct {v10, v11, v1, v4, v7}, Lc0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    invoke-static {v0, v11}, Lc0/e;->a(Lf0/c;Ljava/lang/String;)Lc0/e;

    move-result-object v1

    invoke-virtual {v10, v1}, Lc0/e;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v0, LI/d;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WorkTag(androidx.work.impl.model.WorkTag).\n Expected:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v12}, LI/d;-><init>(Ljava/lang/String;Z)V

    return-object v0

    :cond_2
    new-instance v1, Ljava/util/HashMap;

    const/4 v4, 0x3

    invoke-direct {v1, v4}, Ljava/util/HashMap;-><init>(I)V

    new-instance v4, Lc0/a;

    const/16 v17, 0x1

    const/16 v18, 0x1

    const-string v15, "work_spec_id"

    const-string v16, "TEXT"

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object v14, v4

    invoke-direct/range {v14 .. v20}, Lc0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lc0/a;

    const/16 v24, 0x1

    const/16 v25, 0x2

    const-string v22, "generation"

    const-string v23, "INTEGER"

    const-string v26, "0"

    const/16 v27, 0x1

    move-object/from16 v21, v4

    invoke-direct/range {v21 .. v27}, Lc0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v8, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lc0/a;

    const/16 v18, 0x0

    const-string v15, "system_id"

    const-string v16, "INTEGER"

    move-object v14, v4

    invoke-direct/range {v14 .. v20}, Lc0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v7, "system_id"

    invoke-virtual {v1, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    new-instance v7, Lc0/b;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    const-string v16, "CASCADE"

    const-string v17, "CASCADE"

    const-string v15, "WorkSpec"

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Lc0/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, v12}, Ljava/util/HashSet;-><init>(I)V

    new-instance v8, Lc0/e;

    const-string v10, "SystemIdInfo"

    invoke-direct {v8, v10, v1, v4, v7}, Lc0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    invoke-static {v0, v10}, Lc0/e;->a(Lf0/c;Ljava/lang/String;)Lc0/e;

    move-result-object v1

    invoke-virtual {v8, v1}, Lc0/e;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v0, LI/d;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SystemIdInfo(androidx.work.impl.model.SystemIdInfo).\n Expected:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v12}, LI/d;-><init>(Ljava/lang/String;Z)V

    return-object v0

    :cond_3
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    new-instance v4, Lc0/a;

    const/16 v17, 0x1

    const/16 v18, 0x1

    const-string v15, "name"

    const-string v16, "TEXT"

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object v14, v4

    invoke-direct/range {v14 .. v20}, Lc0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v7, "name"

    invoke-virtual {v1, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lc0/a;

    const/16 v18, 0x2

    const-string v15, "work_spec_id"

    const-string v16, "TEXT"

    move-object v14, v4

    invoke-direct/range {v14 .. v20}, Lc0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    new-instance v7, Lc0/b;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    const-string v16, "CASCADE"

    const-string v17, "CASCADE"

    const-string v15, "WorkSpec"

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Lc0/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7, v5}, Ljava/util/HashSet;-><init>(I)V

    new-instance v8, Lc0/d;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    filled-new-array {v9}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    const-string v11, "index_WorkName_work_spec_id"

    invoke-direct {v8, v11, v12, v10, v9}, Lc0/d;-><init>(Ljava/lang/String;ZLjava/util/List;Ljava/util/List;)V

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v8, Lc0/e;

    const-string v9, "WorkName"

    invoke-direct {v8, v9, v1, v4, v7}, Lc0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    invoke-static {v0, v9}, Lc0/e;->a(Lf0/c;Ljava/lang/String;)Lc0/e;

    move-result-object v1

    invoke-virtual {v8, v1}, Lc0/e;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    new-instance v0, LI/d;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WorkName(androidx.work.impl.model.WorkName).\n Expected:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v12}, LI/d;-><init>(Ljava/lang/String;Z)V

    return-object v0

    :cond_4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    new-instance v4, Lc0/a;

    const/16 v17, 0x1

    const/16 v18, 0x1

    const-string v15, "work_spec_id"

    const-string v16, "TEXT"

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object v14, v4

    invoke-direct/range {v14 .. v20}, Lc0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lc0/a;

    const/16 v24, 0x1

    const/16 v25, 0x0

    const-string v22, "progress"

    const-string v23, "BLOB"

    const/16 v26, 0x0

    const/16 v27, 0x1

    move-object/from16 v21, v4

    invoke-direct/range {v21 .. v27}, Lc0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v7, "progress"

    invoke-virtual {v1, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4, v5}, Ljava/util/HashSet;-><init>(I)V

    new-instance v7, Lc0/b;

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v18

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v19

    const-string v16, "CASCADE"

    const-string v17, "CASCADE"

    const-string v15, "WorkSpec"

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Lc0/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v12}, Ljava/util/HashSet;-><init>(I)V

    new-instance v7, Lc0/e;

    const-string v8, "WorkProgress"

    invoke-direct {v7, v8, v1, v4, v3}, Lc0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    invoke-static {v0, v8}, Lc0/e;->a(Lf0/c;Ljava/lang/String;)Lc0/e;

    move-result-object v1

    invoke-virtual {v7, v1}, Lc0/e;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    new-instance v0, LI/d;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "WorkProgress(androidx.work.impl.model.WorkProgress).\n Expected:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v12}, LI/d;-><init>(Ljava/lang/String;Z)V

    return-object v0

    :cond_5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    new-instance v2, Lc0/a;

    const/16 v16, 0x1

    const/16 v17, 0x1

    const-string v14, "key"

    const-string v15, "TEXT"

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object v13, v2

    invoke-direct/range {v13 .. v19}, Lc0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "key"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lc0/a;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-string v14, "long_value"

    const-string v15, "INTEGER"

    move-object v13, v2

    invoke-direct/range {v13 .. v19}, Lc0/a;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;I)V

    const-string v3, "long_value"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v12}, Ljava/util/HashSet;-><init>(I)V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3, v12}, Ljava/util/HashSet;-><init>(I)V

    new-instance v4, Lc0/e;

    const-string v7, "Preference"

    invoke-direct {v4, v7, v1, v2, v3}, Lc0/e;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/AbstractSet;Ljava/util/AbstractSet;)V

    invoke-static {v0, v7}, Lc0/e;->a(Lf0/c;Ljava/lang/String;)Lc0/e;

    move-result-object v0

    invoke-virtual {v4, v0}, Lc0/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v1, LI/d;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Preference(androidx.work.impl.model.Preference).\n Expected:\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v12}, LI/d;-><init>(Ljava/lang/String;Z)V

    return-object v1

    :cond_6
    new-instance v0, LI/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v5}, LI/d;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method


# virtual methods
.method public A(LX3/B;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p2, Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    check-cast p0, Lu4/g;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, LU3/e;->I()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-virtual {p0}, Lu4/g;->q()Z

    move-result v4

    const/4 v5, 0x0

    const-string v6, "companion object"

    if-nez v4, :cond_11

    invoke-virtual {p0, p2, p1, v5}, Lu4/g;->x(Ljava/lang/StringBuilder;LV3/a;LV3/d;)V

    if-nez v0, :cond_1

    invoke-interface {p1}, LU3/e;->b()LU3/n;

    move-result-object v4

    const-string v7, "klass.visibility"

    invoke-static {v4, v7}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v4, p2}, Lu4/g;->d0(LU3/n;Ljava/lang/StringBuilder;)Z

    :cond_1
    invoke-interface {p1}, LU3/e;->I()I

    move-result v4

    const/4 v7, 0x2

    if-ne v4, v7, :cond_2

    invoke-interface {p1}, LU3/e;->e()I

    move-result v4

    if-eq v4, v2, :cond_4

    :cond_2
    invoke-interface {p1}, LU3/e;->I()I

    move-result v4

    invoke-static {v4}, LB/a;->d(I)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1}, LU3/e;->e()I

    move-result v4

    if-eq v4, v1, :cond_4

    :cond_3
    invoke-interface {p1}, LU3/e;->e()I

    move-result v4

    const-string v8, "klass.modality"

    invoke-static {v4, v8}, LB/a;->y(ILjava/lang/String;)V

    invoke-static {p1}, Lu4/g;->u(LU3/v;)I

    move-result v8

    invoke-virtual {p0, p2, v4, v8}, Lu4/g;->H(Ljava/lang/StringBuilder;II)V

    :cond_4
    invoke-virtual {p0, p1, p2}, Lu4/g;->G(LU3/v;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Lu4/g;->p()Ljava/util/Set;

    move-result-object v4

    sget-object v8, Lu4/h;->k:Lu4/h;

    invoke-interface {v4, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p1}, LU3/h;->y()Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v1

    goto :goto_1

    :cond_5
    move v4, v3

    :goto_1
    const-string v8, "inner"

    invoke-virtual {p0, p2, v4, v8}, Lu4/g;->J(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-virtual {p0}, Lu4/g;->p()Ljava/util/Set;

    move-result-object v4

    sget-object v8, Lu4/h;->m:Lu4/h;

    invoke-interface {v4, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p1}, LU3/e;->v0()Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v1

    goto :goto_2

    :cond_6
    move v4, v3

    :goto_2
    const-string v8, "data"

    invoke-virtual {p0, p2, v4, v8}, Lu4/g;->J(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-virtual {p0}, Lu4/g;->p()Ljava/util/Set;

    move-result-object v4

    sget-object v8, Lu4/h;->n:Lu4/h;

    invoke-interface {v4, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p1}, LU3/e;->f()Z

    move-result v4

    if-eqz v4, :cond_7

    move v4, v1

    goto :goto_3

    :cond_7
    move v4, v3

    :goto_3
    const-string v8, "inline"

    invoke-virtual {p0, p2, v4, v8}, Lu4/g;->J(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-virtual {p0}, Lu4/g;->p()Ljava/util/Set;

    move-result-object v4

    sget-object v8, Lu4/h;->t:Lu4/h;

    invoke-interface {v4, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {p1}, LU3/e;->t()Z

    move-result v4

    if-eqz v4, :cond_8

    move v4, v1

    goto :goto_4

    :cond_8
    move v4, v3

    :goto_4
    const-string v8, "value"

    invoke-virtual {p0, p2, v4, v8}, Lu4/g;->J(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-virtual {p0}, Lu4/g;->p()Ljava/util/Set;

    move-result-object v4

    sget-object v8, Lu4/h;->s:Lu4/h;

    invoke-interface {v4, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {p1}, LU3/e;->c0()Z

    move-result v4

    if-eqz v4, :cond_9

    move v4, v1

    goto :goto_5

    :cond_9
    move v4, v3

    :goto_5
    const-string v8, "fun"

    invoke-virtual {p0, p2, v4, v8}, Lu4/g;->J(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-interface {p1}, LU3/e;->K()Z

    move-result v4

    if-eqz v4, :cond_a

    move-object v2, v6

    goto :goto_6

    :cond_a
    invoke-interface {p1}, LU3/e;->I()I

    move-result v4

    invoke-static {v4}, Lq/e;->c(I)I

    move-result v4

    if-eqz v4, :cond_10

    if-eq v4, v1, :cond_f

    if-eq v4, v7, :cond_e

    const/4 v7, 0x3

    if-eq v4, v7, :cond_d

    if-eq v4, v2, :cond_c

    const/4 v2, 0x5

    if-ne v4, v2, :cond_b

    const-string v2, "object"

    goto :goto_6

    :cond_b
    new-instance p0, LW4/m;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_c
    const-string v2, "annotation class"

    goto :goto_6

    :cond_d
    const-string v2, "enum entry"

    goto :goto_6

    :cond_e
    const-string v2, "enum class"

    goto :goto_6

    :cond_f
    const-string v2, "interface"

    goto :goto_6

    :cond_10
    const-string v2, "class"

    :goto_6
    invoke-virtual {p0, v2}, Lu4/g;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    invoke-static {p1}, Lv4/f;->l(LU3/j;)Z

    move-result v2

    iget-object v4, p0, Lu4/g;->a:Lu4/k;

    if-nez v2, :cond_13

    invoke-virtual {p0}, Lu4/g;->q()Z

    move-result v2

    if-nez v2, :cond_12

    invoke-static {p2}, Lu4/g;->T(Ljava/lang/StringBuilder;)V

    :cond_12
    invoke-virtual {p0, p1, p2, v1}, Lu4/g;->L(LU3/j;Ljava/lang/StringBuilder;Z)V

    goto :goto_7

    :cond_13
    sget-object v2, Lu4/k;->U:[LL3/l;

    const/16 v7, 0x1e

    aget-object v2, v2, v7

    iget-object v7, v4, Lu4/k;->E:Lu4/j;

    invoke-virtual {v7, v2}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {p0}, Lu4/g;->q()Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    invoke-static {p2}, Lu4/g;->T(Ljava/lang/StringBuilder;)V

    invoke-interface {p1}, LU3/j;->g()LU3/j;

    move-result-object v2

    if-eqz v2, :cond_15

    const-string v6, "of "

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, LU3/j;->r()Ls4/f;

    move-result-object v2

    const-string v6, "containingDeclaration.name"

    invoke-static {v2, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lu4/g;->K(Ls4/f;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    invoke-virtual {p0}, Lu4/g;->t()Z

    move-result v2

    if-nez v2, :cond_16

    invoke-interface {p1}, LU3/j;->r()Ls4/f;

    move-result-object v2

    sget-object v6, Ls4/h;->b:Ls4/f;

    invoke-static {v2, v6}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_18

    :cond_16
    invoke-virtual {p0}, Lu4/g;->q()Z

    move-result v2

    if-nez v2, :cond_17

    invoke-static {p2}, Lu4/g;->T(Ljava/lang/StringBuilder;)V

    :cond_17
    invoke-interface {p1}, LU3/j;->r()Ls4/f;

    move-result-object v2

    const-string v6, "descriptor.name"

    invoke-static {v2, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2, v1}, Lu4/g;->K(Ls4/f;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    :goto_7
    if-eqz v0, :cond_19

    goto/16 :goto_9

    :cond_19
    invoke-interface {p1}, LU3/e;->o()Ljava/util/List;

    move-result-object v7

    const-string v0, "klass.declaredTypeParameters"

    invoke-static {v7, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, v7, v3}, Lu4/g;->Z(Ljava/lang/StringBuilder;Ljava/util/List;Z)V

    invoke-virtual {p0, p1, p2}, Lu4/g;->z(LU3/h;Ljava/lang/StringBuilder;)V

    invoke-interface {p1}, LU3/e;->I()I

    move-result v0

    invoke-static {v0}, LB/a;->d(I)Z

    move-result v0

    if-nez v0, :cond_1a

    sget-object v0, Lu4/k;->U:[LL3/l;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    iget-object v2, v4, Lu4/k;->i:Lu4/j;

    invoke-virtual {v2, v0}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p1}, LU3/e;->T()LU3/d;

    move-result-object v0

    if-eqz v0, :cond_1a

    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2, v0, v5}, Lu4/g;->x(Ljava/lang/StringBuilder;LV3/a;LV3/d;)V

    move-object v2, v0

    check-cast v2, LX3/w;

    invoke-virtual {v2}, LX3/w;->b()LU3/n;

    move-result-object v3

    const-string v5, "primaryConstructor.visibility"

    invoke-static {v3, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v3, p2}, Lu4/g;->d0(LU3/n;Ljava/lang/StringBuilder;)Z

    const-string v3, "constructor"

    invoke-virtual {p0, v3}, Lu4/g;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, LX3/w;->n0()Ljava/util/List;

    move-result-object v2

    const-string v3, "primaryConstructor.valueParameters"

    invoke-static {v2, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, LU3/a;->j0()Z

    move-result v0

    invoke-virtual {p0, p2, v2, v0}, Lu4/g;->c0(Ljava/lang/StringBuilder;Ljava/util/List;Z)V

    :cond_1a
    sget-object v0, Lu4/k;->U:[LL3/l;

    const/16 v2, 0x15

    aget-object v0, v0, v2

    iget-object v2, v4, Lu4/k;->v:Lu4/j;

    invoke-virtual {v2, v0}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_8

    :cond_1b
    invoke-interface {p1}, LU3/e;->n()LJ4/G;

    move-result-object v0

    invoke-static {v0}, LR3/j;->D(LJ4/C;)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_8

    :cond_1c
    invoke-interface {p1}, LU3/g;->E()LJ4/M;

    move-result-object p1

    invoke-interface {p1}, LJ4/M;->f()Ljava/util/Collection;

    move-result-object v0

    const-string p1, "klass.typeConstructor.supertypes"

    invoke-static {v0, p1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1e

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result p1

    if-ne p1, v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LJ4/C;

    invoke-static {p1}, LR3/j;->w(LJ4/C;)Z

    move-result p1

    if-eqz p1, :cond_1d

    goto :goto_8

    :cond_1d
    invoke-static {p2}, Lu4/g;->T(Ljava/lang/StringBuilder;)V

    const-string p1, ": "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Lu4/f;

    const/4 p1, 0x2

    invoke-direct {v5, p0, p1}, Lu4/f;-><init>(Lu4/g;I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v2, ", "

    const/16 v6, 0x3c

    move-object v1, p2

    invoke-static/range {v0 .. v6}, Lr3/j;->y0(Ljava/util/Collection;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LE3/b;I)V

    :cond_1e
    :goto_8
    invoke-virtual {p0, v7, p2}, Lu4/g;->e0(Ljava/util/List;Ljava/lang/StringBuilder;)V

    :goto_9
    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0
.end method

.method public B(LX3/M;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "getter"

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/y;->q(LU3/I;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0
.end method

.method public H(LX3/d;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LX3/p;->r()Ls4/f;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0
.end method

.method public L(LX3/L;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    check-cast p0, Lu4/g;

    invoke-static {p0, p1, p2}, Lu4/g;->l(Lu4/g;LX3/L;Ljava/lang/StringBuilder;)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0
.end method

.method public a(Ljava/lang/Object;Lw3/c;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/util/List;

    iget-object p0, p0, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    check-cast p0, Lu1/b;

    iget-object p1, p0, Lu1/b;->d:Ljava/lang/String;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "Weather is updated."

    invoke-static {p1, v0, p2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lu1/b;->e()V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0
.end method

.method public b(Lkotlinx/coroutines/flow/b;Lu3/d;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/flow/i;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/flow/i;->b(Lkotlinx/coroutines/flow/b;Lu3/d;)Ljava/lang/Object;

    sget-object p0, Lv3/a;->d:Lv3/a;

    return-object p0
.end method

.method public c(Landroid/view/View;LK/U;)LK/U;
    .locals 5

    const/4 p1, 0x1

    iget-object p0, p0, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    check-cast p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->q:LK/U;

    invoke-static {v0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iput-object p2, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->q:LK/U;

    invoke-virtual {p2}, LK/U;->d()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->r:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, p1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setWillNotDraw(Z)V

    iget-object v0, p2, LK/U;->a:LK/S;

    invoke-virtual {v0}, LK/S;->j()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_2
    if-ge v1, v2, :cond_4

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    sget-object v4, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lx/d;

    iget-object v3, v3, Lx/d;->a:Lx/a;

    if-eqz v3, :cond_3

    invoke-virtual {v0}, LK/S;->j()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_3
    add-int/2addr v1, p1

    goto :goto_2

    :cond_4
    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    :cond_5
    return-object p2
.end method

.method public d()Ln0/g;
    .locals 1

    new-instance v0, Ln0/g;

    iget-object p0, p0, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ln0/g;-><init>(Ljava/util/HashMap;)V

    invoke-static {v0}, Ln0/g;->e(Ln0/g;)[B

    return-object v0
.end method

.method public f(Lt4/e;)V
    .locals 4

    invoke-virtual {p1}, Lt4/e;->l()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lt4/e;->size()I

    move-result v0

    sget-object v1, Lt4/B;->k:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v2, v0, 0x1

    aget v2, v1, v2

    iget-object p0, p0, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/Stack;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt4/e;

    invoke-virtual {v3}, Lt4/e;->size()I

    move-result v3

    if-lt v3, v2, :cond_1

    goto :goto_2

    :cond_1
    aget v0, v1, v0

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt4/e;

    :goto_0
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt4/e;

    invoke-virtual {v2}, Lt4/e;->size()I

    move-result v2

    if-ge v2, v0, :cond_2

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt4/e;

    new-instance v3, Lt4/B;

    invoke-direct {v3, v2, v1}, Lt4/B;-><init>(Lt4/e;Lt4/e;)V

    move-object v1, v3

    goto :goto_0

    :cond_2
    new-instance v0, Lt4/B;

    invoke-direct {v0, v1, p1}, Lt4/B;-><init>(Lt4/e;Lt4/e;)V

    :goto_1
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lt4/B;->k:[I

    iget v1, v0, Lt4/B;->e:I

    invoke-static {p1, v1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v1

    if-gez v1, :cond_3

    add-int/lit8 v1, v1, 0x1

    neg-int v1, v1

    add-int/lit8 v1, v1, -0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    aget p1, p1, v1

    invoke-virtual {p0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt4/e;

    invoke-virtual {v1}, Lt4/e;->size()I

    move-result v1

    if-ge v1, p1, :cond_4

    invoke-virtual {p0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lt4/e;

    new-instance v1, Lt4/B;

    invoke-direct {v1, p1, v0}, Lt4/B;-><init>(Lt4/e;Lt4/e;)V

    move-object v0, v1

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    :goto_2
    invoke-virtual {p0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_6
    instance-of v0, p1, Lt4/B;

    if-eqz v0, :cond_7

    check-cast p1, Lt4/B;

    iget-object v0, p1, Lt4/B;->f:Lt4/e;

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/y;->f(Lt4/e;)V

    iget-object p1, p1, Lt4/B;->g:Lt4/e;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/y;->f(Lt4/e;)V

    :goto_3
    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x31

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Has a new type of ByteString been created? Found "

    invoke-static {v0, v1, p1}, LB/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic g(LU3/s;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/y;->p(LU3/s;Ljava/lang/StringBuilder;)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0
.end method

.method public h(LX3/z;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    check-cast p0, Lu4/g;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "package"

    iget-object v1, p1, LX3/z;->g:Ls4/c;

    invoke-virtual {p0, v1, v0, p2}, Lu4/g;->P(Ls4/c;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v0, p0, Lu4/g;->a:Lu4/k;

    invoke-virtual {v0}, Lu4/k;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " in context of "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    iget-object p1, p1, LX3/z;->f:LX3/D;

    invoke-virtual {p0, p1, p2, v0}, Lu4/g;->L(LU3/j;Ljava/lang/StringBuilder;Z)V

    :cond_0
    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0
.end method

.method public i(LX3/F;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    check-cast p0, Lu4/g;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "package-fragment"

    iget-object v1, p1, LX3/F;->h:Ls4/c;

    invoke-virtual {p0, v1, v0, p2}, Lu4/g;->P(Ls4/c;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v0, p0, Lu4/g;->a:Lu4/k;

    invoke-virtual {v0}, Lu4/k;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " in "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LX3/F;->H0()LU3/x;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lu4/g;->L(LU3/j;Ljava/lang/StringBuilder;Z)V

    :cond_0
    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0
.end method

.method public j(Ljava/lang/Object;)V
    .locals 9

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    const-string v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v6, p1

    if-ne v4, v6, :cond_0

    aget-object v6, p1, v3

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    aget-object v7, p1, v2

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    aget-object v8, p1, v1

    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v8

    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    new-array v4, v4, [F

    aput v6, v4, v3

    aput v7, v4, v2

    aput v8, v4, v1

    aput p1, v4, v0

    aget p1, v4, v3

    aget v2, v4, v2

    aget v1, v4, v1

    aget v0, v4, v0

    iget-object p0, p0, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    check-cast p0, Lc1/e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Landroid/view/animation/PathInterpolator;

    invoke-direct {v3, p1, v2, v1, v0}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lc1/e;->d:Lb1/a;

    iput-object p1, p0, Lb1/a;->b:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public l(LH4/v;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    check-cast p0, Lu4/g;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lu4/g;->x(Ljava/lang/StringBuilder;LV3/a;LV3/d;)V

    const-string v0, "typeAlias.visibility"

    iget-object v1, p1, LH4/v;->h:LU3/n;

    invoke-static {v1, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, p2}, Lu4/g;->d0(LU3/n;Ljava/lang/StringBuilder;)Z

    invoke-virtual {p0, p1, p2}, Lu4/g;->G(LU3/v;Ljava/lang/StringBuilder;)V

    const-string v0, "typealias"

    invoke-virtual {p0, v0}, Lu4/g;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lu4/g;->L(LU3/j;Ljava/lang/StringBuilder;Z)V

    invoke-virtual {p1}, LH4/v;->o()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lu4/g;->Z(Ljava/lang/StringBuilder;Ljava/util/List;Z)V

    invoke-virtual {p0, p1, p2}, Lu4/g;->z(LU3/h;Ljava/lang/StringBuilder;)V

    const-string v0, " = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, LH4/v;->J0()LJ4/G;

    move-result-object p1

    invoke-virtual {p0, p1}, Lu4/g;->U(LJ4/C;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0
.end method

.method public m(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5

    iget-object p0, p0, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/HashMap;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Boolean;

    if-eq v0, v1, :cond_e

    const-class v1, Ljava/lang/Byte;

    if-eq v0, v1, :cond_e

    const-class v1, Ljava/lang/Integer;

    if-eq v0, v1, :cond_e

    const-class v1, Ljava/lang/Long;

    if-eq v0, v1, :cond_e

    const-class v1, Ljava/lang/Float;

    if-eq v0, v1, :cond_e

    const-class v1, Ljava/lang/Double;

    if-eq v0, v1, :cond_e

    const-class v1, Ljava/lang/String;

    if-eq v0, v1, :cond_e

    const-class v1, [Ljava/lang/Boolean;

    if-eq v0, v1, :cond_e

    const-class v1, [Ljava/lang/Byte;

    if-eq v0, v1, :cond_e

    const-class v1, [Ljava/lang/Integer;

    if-eq v0, v1, :cond_e

    const-class v1, [Ljava/lang/Long;

    if-eq v0, v1, :cond_e

    const-class v1, [Ljava/lang/Float;

    if-eq v0, v1, :cond_e

    const-class v1, [Ljava/lang/Double;

    if-eq v0, v1, :cond_e

    const-class v1, [Ljava/lang/String;

    if-ne v0, v1, :cond_1

    goto/16 :goto_6

    :cond_1
    const-class v1, [Z

    const/4 v2, 0x0

    if-ne v0, v1, :cond_3

    check-cast p1, [Z

    sget-object v0, Ln0/g;->b:Ljava/lang/String;

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Boolean;

    :goto_0
    array-length v1, p1

    if-ge v2, v1, :cond_2

    aget-boolean v1, p1, v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    :cond_3
    const-class v1, [B

    if-ne v0, v1, :cond_5

    check-cast p1, [B

    sget-object v0, Ln0/g;->b:Ljava/lang/String;

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Byte;

    :goto_1
    array-length v1, p1

    if-ge v2, v1, :cond_4

    aget-byte v1, p1, v2

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    :cond_5
    const-class v1, [I

    if-ne v0, v1, :cond_7

    check-cast p1, [I

    sget-object v0, Ln0/g;->b:Ljava/lang/String;

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Integer;

    :goto_2
    array-length v1, p1

    if-ge v2, v1, :cond_6

    aget v1, p1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    :cond_7
    const-class v1, [J

    if-ne v0, v1, :cond_9

    check-cast p1, [J

    sget-object v0, Ln0/g;->b:Ljava/lang/String;

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Long;

    :goto_3
    array-length v1, p1

    if-ge v2, v1, :cond_8

    aget-wide v3, p1, v2

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_9
    const-class v1, [F

    if-ne v0, v1, :cond_b

    check-cast p1, [F

    sget-object v0, Ln0/g;->b:Ljava/lang/String;

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Float;

    :goto_4
    array-length v1, p1

    if-ge v2, v1, :cond_a

    aget v1, p1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_a
    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_b
    const-class v1, [D

    if-ne v0, v1, :cond_d

    check-cast p1, [D

    sget-object v0, Ln0/g;->b:Ljava/lang/String;

    array-length v0, p1

    new-array v0, v0, [Ljava/lang/Double;

    :goto_5
    array-length v1, p1

    if-ge v2, v1, :cond_c

    aget-wide v3, p1, v2

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_c
    invoke-virtual {p0, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Key "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "has invalid type "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    :goto_6
    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_7
    return-void
.end method

.method public n(Ljava/util/HashMap;)V
    .locals 2

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Landroidx/recyclerview/widget/y;->m(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public o(LX3/l;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, p0

    iget-object v2, v2, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    check-cast v2, Lu4/g;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v0, v3}, Lu4/g;->x(Ljava/lang/StringBuilder;LV3/a;LV3/d;)V

    iget-object v3, v2, Lu4/g;->a:Lu4/k;

    sget-object v4, Lu4/k;->U:[LL3/l;

    const/16 v5, 0xd

    aget-object v5, v4, v5

    iget-object v6, v3, Lu4/k;->o:Lu4/j;

    invoke-virtual {v6, v5}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_0

    invoke-virtual/range {p1 .. p1}, LX3/l;->V()LU3/e;

    move-result-object v5

    invoke-interface {v5}, LU3/e;->e()I

    move-result v5

    const/4 v8, 0x2

    if-eq v5, v8, :cond_1

    :cond_0
    invoke-virtual/range {p1 .. p1}, LX3/w;->b()LU3/n;

    move-result-object v5

    const-string v8, "constructor.visibility"

    invoke-static {v5, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5, v1}, Lu4/g;->d0(LU3/n;Ljava/lang/StringBuilder;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v7

    goto :goto_0

    :cond_1
    move v5, v6

    :goto_0
    invoke-virtual {v2, v0, v1}, Lu4/g;->F(LU3/b;Ljava/lang/StringBuilder;)V

    const/16 v8, 0x27

    aget-object v8, v4, v8

    iget-object v9, v3, Lu4/k;->N:Lu4/j;

    invoke-virtual {v9, v8}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    iget-boolean v9, v0, LX3/l;->F:Z

    if-nez v8, :cond_3

    if-eqz v9, :cond_3

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    move v5, v6

    goto :goto_2

    :cond_3
    :goto_1
    move v5, v7

    :goto_2
    if-eqz v5, :cond_4

    const-string v8, "constructor"

    invoke-virtual {v2, v8}, Lu4/g;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual/range {p1 .. p1}, LX3/l;->S0()LU3/e;

    move-result-object v8

    const-string v10, "constructor.containingDeclaration"

    invoke-static {v8, v10}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v10, 0x18

    aget-object v11, v4, v10

    iget-object v12, v3, Lu4/k;->y:Lu4/j;

    invoke-virtual {v12, v11}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_6

    if-eqz v5, :cond_5

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v2, v8, v1, v7}, Lu4/g;->L(LU3/j;Ljava/lang/StringBuilder;Z)V

    invoke-virtual/range {p1 .. p1}, LX3/w;->q()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v1, v5, v6}, Lu4/g;->Z(Ljava/lang/StringBuilder;Ljava/util/List;Z)V

    :cond_6
    invoke-virtual/range {p1 .. p1}, LX3/w;->n0()Ljava/util/List;

    move-result-object v5

    const-string v6, "constructor.valueParameters"

    invoke-static {v5, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, LU3/a;->j0()Z

    move-result v6

    invoke-virtual {v2, v1, v5, v6}, Lu4/g;->c0(Ljava/lang/StringBuilder;Ljava/util/List;Z)V

    const/16 v5, 0xf

    aget-object v4, v4, v5

    iget-object v5, v3, Lu4/k;->q:Lu4/j;

    invoke-virtual {v5, v4}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_9

    if-nez v9, :cond_9

    invoke-interface {v8}, LU3/e;->T()LU3/d;

    move-result-object v4

    if-eqz v4, :cond_9

    check-cast v4, LX3/w;

    invoke-virtual {v4}, LX3/w;->n0()Ljava/util/List;

    move-result-object v4

    const-string v5, "primaryConstructor.valueParameters"

    invoke-static {v4, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, LX3/W;

    invoke-virtual {v6}, LX3/W;->I0()Z

    move-result v7

    if-nez v7, :cond_7

    iget-object v6, v6, LX3/W;->m:LJ4/C;

    if-nez v6, :cond_7

    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, " : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "this"

    invoke-virtual {v2, v4}, Lu4/g;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Lu4/d;->o:Lu4/d;

    const-string v14, ")"

    const/16 v16, 0x18

    const-string v12, ", "

    const-string v13, "("

    invoke-static/range {v11 .. v16}, Lr3/j;->A0(Ljava/lang/Iterable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;LE3/b;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    sget-object v4, Lu4/k;->U:[LL3/l;

    aget-object v4, v4, v10

    iget-object v3, v3, Lu4/k;->y:Lu4/j;

    invoke-virtual {v3, v4}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual/range {p1 .. p1}, LX3/w;->q()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lu4/g;->e0(Ljava/util/List;Ljava/lang/StringBuilder;)V

    :cond_a
    sget-object v0, Lq3/m;->a:Lq3/m;

    return-object v0
.end method

.method public p(LU3/s;Ljava/lang/StringBuilder;)V
    .locals 9

    iget-object p0, p0, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    check-cast p0, Lu4/g;

    invoke-virtual {p0}, Lu4/g;->q()Z

    move-result v0

    iget-object v1, p0, Lu4/g;->a:Lu4/k;

    const-string v2, "function.typeParameters"

    const/4 v3, 0x1

    if-nez v0, :cond_c

    sget-object v0, Lu4/k;->U:[LL3/l;

    const/4 v4, 0x5

    aget-object v4, v0, v4

    iget-object v5, v1, Lu4/k;->g:Lu4/j;

    invoke-virtual {v5, v4}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_b

    const/4 v4, 0x0

    invoke-virtual {p0, p2, p1, v4}, Lu4/g;->x(Ljava/lang/StringBuilder;LV3/a;LV3/d;)V

    invoke-interface {p1}, LU3/v;->b()LU3/n;

    move-result-object v4

    const-string v5, "function.visibility"

    invoke-static {v4, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v4, p2}, Lu4/g;->d0(LU3/n;Ljava/lang/StringBuilder;)Z

    invoke-virtual {p0, p1, p2}, Lu4/g;->I(LU3/b;Ljava/lang/StringBuilder;)V

    const/16 v4, 0x2a

    aget-object v5, v0, v4

    iget-object v6, v1, Lu4/k;->Q:Lu4/j;

    invoke-virtual {v6, v5}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, p1, p2}, Lu4/g;->G(LU3/v;Ljava/lang/StringBuilder;)V

    :cond_0
    invoke-virtual {p0, p1, p2}, Lu4/g;->O(LU3/b;Ljava/lang/StringBuilder;)V

    aget-object v0, v0, v4

    iget-object v4, v1, Lu4/k;->Q:Lu4/j;

    invoke-virtual {v4, v0}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v4, "suspend"

    if-eqz v0, :cond_9

    invoke-interface {p1}, LU3/s;->O()Z

    move-result v0

    const/16 v5, 0x26

    const/4 v6, 0x0

    const-string v7, "functionDescriptor.overriddenDescriptors"

    if-eqz v0, :cond_4

    invoke-interface {p1}, LU3/b;->m()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, v7}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LU3/s;

    invoke-interface {v8}, LU3/s;->O()Z

    move-result v8

    if-eqz v8, :cond_2

    sget-object v0, Lu4/k;->U:[LL3/l;

    aget-object v0, v0, v5

    iget-object v8, v1, Lu4/k;->M:Lu4/j;

    invoke-virtual {v8, v0}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    :goto_0
    move v0, v3

    goto :goto_1

    :cond_4
    move v0, v6

    :goto_1
    invoke-interface {p1}, LU3/s;->o0()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {p1}, LU3/b;->m()Ljava/util/Collection;

    move-result-object v8

    invoke-static {v8, v7}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_5

    goto :goto_2

    :cond_5
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, LU3/s;

    invoke-interface {v8}, LU3/s;->o0()Z

    move-result v8

    if-eqz v8, :cond_6

    sget-object v7, Lu4/k;->U:[LL3/l;

    aget-object v5, v7, v5

    iget-object v7, v1, Lu4/k;->M:Lu4/j;

    invoke-virtual {v7, v5}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    :goto_2
    move v6, v3

    :cond_8
    invoke-interface {p1}, LU3/s;->M()Z

    move-result v5

    const-string v7, "tailrec"

    invoke-virtual {p0, p2, v5, v7}, Lu4/g;->J(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-interface {p1}, LU3/s;->G()Z

    move-result v5

    invoke-virtual {p0, p2, v5, v4}, Lu4/g;->J(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    invoke-interface {p1}, LU3/s;->f()Z

    move-result v4

    const-string v5, "inline"

    invoke-virtual {p0, p2, v4, v5}, Lu4/g;->J(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    const-string v4, "infix"

    invoke-virtual {p0, p2, v6, v4}, Lu4/g;->J(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    const-string v4, "operator"

    invoke-virtual {p0, p2, v0, v4}, Lu4/g;->J(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    goto :goto_3

    :cond_9
    invoke-interface {p1}, LU3/s;->G()Z

    move-result v0

    invoke-virtual {p0, p2, v0, v4}, Lu4/g;->J(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :goto_3
    invoke-virtual {p0, p1, p2}, Lu4/g;->F(LU3/b;Ljava/lang/StringBuilder;)V

    invoke-virtual {p0}, Lu4/g;->t()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, LU3/s;->F()Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "/*isHiddenToOvercomeSignatureClash*/ "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    invoke-interface {p1}, LU3/s;->X()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "/*isHiddenForResolutionEverywhereBesideSupercalls*/ "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const-string v0, "fun"

    invoke-virtual {p0, v0}, Lu4/g;->E(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, LU3/a;->q()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2, v0, v3}, Lu4/g;->Z(Ljava/lang/StringBuilder;Ljava/util/List;Z)V

    invoke-virtual {p0, p1, p2}, Lu4/g;->R(LU3/b;Ljava/lang/StringBuilder;)V

    :cond_c
    invoke-virtual {p0, p1, p2, v3}, Lu4/g;->L(LU3/j;Ljava/lang/StringBuilder;Z)V

    invoke-interface {p1}, LU3/a;->n0()Ljava/util/List;

    move-result-object v0

    const-string v3, "function.valueParameters"

    invoke-static {v0, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, LU3/a;->j0()Z

    move-result v3

    invoke-virtual {p0, p2, v0, v3}, Lu4/g;->c0(Ljava/lang/StringBuilder;Ljava/util/List;Z)V

    invoke-virtual {p0, p1, p2}, Lu4/g;->S(LU3/b;Ljava/lang/StringBuilder;)V

    invoke-interface {p1}, LU3/a;->k()LJ4/C;

    move-result-object v0

    sget-object v3, Lu4/k;->U:[LL3/l;

    const/16 v4, 0xa

    aget-object v4, v3, v4

    iget-object v5, v1, Lu4/k;->l:Lu4/j;

    invoke-virtual {v5, v4}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_f

    const/16 v4, 0x9

    aget-object v3, v3, v4

    iget-object v1, v1, Lu4/k;->k:Lu4/j;

    invoke-virtual {v1, v3}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_d

    if-eqz v0, :cond_d

    sget-object v1, LR3/j;->e:Ls4/f;

    sget-object v1, LR3/o;->d:Ls4/e;

    invoke-static {v0, v1}, LR3/j;->C(LJ4/C;Ls4/e;)Z

    move-result v1

    if-nez v1, :cond_f

    :cond_d
    const-string v1, ": "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_e

    const-string v0, "[NULL]"

    goto :goto_4

    :cond_e
    invoke-virtual {p0, v0}, Lu4/g;->U(LJ4/C;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    invoke-interface {p1}, LU3/a;->q()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lu4/g;->e0(Ljava/util/List;Ljava/lang/StringBuilder;)V

    return-void
.end method

.method public q(LU3/I;Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    check-cast v0, Lu4/g;

    iget-object v1, v0, Lu4/g;->a:Lu4/k;

    sget-object v2, Lu4/k;->U:[LL3/l;

    const/16 v3, 0x1f

    aget-object v2, v2, v3

    iget-object v1, v1, Lu4/k;->F:Lu4/j;

    invoke-virtual {v1, v2}, Lu4/j;->a(LL3/l;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lu4/p;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 p3, 0x1

    if-eq v1, p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/y;->p(LU3/s;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1, p2}, Lu4/g;->G(LU3/v;Ljava/lang/StringBuilder;)V

    const-string p0, " for "

    invoke-static {p0, p3}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, LX3/J;

    invoke-virtual {p1}, LX3/J;->H0()LX3/L;

    move-result-object p0

    invoke-static {v0, p0, p2}, Lu4/g;->l(Lu4/g;LX3/L;Ljava/lang/StringBuilder;)V

    :goto_0
    return-void
.end method

.method public t(LX3/W;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    check-cast p0, Lu4/g;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2, v0}, Lu4/g;->b0(LX3/W;ZLjava/lang/StringBuilder;Z)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget v0, p0, Landroidx/recyclerview/widget/y;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    check-cast p0, Lh4/n;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lh4/n;->l:LI4/i;

    sget-object v1, Lh4/n;->p:[LL3/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p0, v1}, Lw0/f;->C(LI4/m;LL3/l;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method public v(LX3/N;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ljava/lang/StringBuilder;

    const-string v0, "setter"

    invoke-virtual {p0, p1, p2, v0}, Landroidx/recyclerview/widget/y;->q(LU3/I;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0
.end method

.method public x(LX3/k;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    check-cast p0, Lu4/g;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lu4/g;->X(LU3/O;Ljava/lang/StringBuilder;Z)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0
.end method

.method public z(LX3/D;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    check-cast p0, Lu4/g;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lu4/g;->L(LU3/j;Ljava/lang/StringBuilder;Z)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0
.end method
