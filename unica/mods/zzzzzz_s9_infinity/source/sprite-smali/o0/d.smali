.class public final Lo0/d;
.super Lb0/a;
.source "SourceFile"


# static fields
.field public static final d:Lo0/d;

.field public static final e:Lo0/d;

.field public static final f:Lo0/d;

.field public static final g:Lo0/d;

.field public static final h:Lo0/d;

.field public static final i:Lo0/d;

.field public static final j:Lo0/d;

.field public static final k:Lo0/d;

.field public static final l:Lo0/d;


# instance fields
.field public final synthetic c:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 4

    new-instance v0, Lo0/d;

    const/16 v1, 0xb

    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lo0/d;-><init>(III)V

    sput-object v0, Lo0/d;->d:Lo0/d;

    new-instance v0, Lo0/d;

    const/16 v1, 0xc

    const/16 v2, 0xd

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lo0/d;-><init>(III)V

    sput-object v0, Lo0/d;->e:Lo0/d;

    new-instance v0, Lo0/d;

    const/16 v1, 0xf

    const/16 v2, 0x10

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lo0/d;-><init>(III)V

    sput-object v0, Lo0/d;->f:Lo0/d;

    new-instance v0, Lo0/d;

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lo0/d;-><init>(III)V

    sput-object v0, Lo0/d;->g:Lo0/d;

    new-instance v0, Lo0/d;

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lo0/d;-><init>(III)V

    sput-object v0, Lo0/d;->h:Lo0/d;

    new-instance v0, Lo0/d;

    const/4 v1, 0x4

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lo0/d;-><init>(III)V

    sput-object v0, Lo0/d;->i:Lo0/d;

    new-instance v0, Lo0/d;

    const/4 v1, 0x6

    const/4 v2, 0x7

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lo0/d;-><init>(III)V

    sput-object v0, Lo0/d;->j:Lo0/d;

    new-instance v0, Lo0/d;

    const/4 v1, 0x7

    const/16 v2, 0x8

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lo0/d;-><init>(III)V

    sput-object v0, Lo0/d;->k:Lo0/d;

    new-instance v0, Lo0/d;

    const/16 v1, 0x8

    const/16 v2, 0x9

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lo0/d;-><init>(III)V

    sput-object v0, Lo0/d;->l:Lo0/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/16 v0, 0xa

    iput v0, p0, Lo0/d;->c:I

    const/16 v0, 0xe

    const/16 v1, 0xf

    .line 2
    invoke-direct {p0, v0, v1}, Lb0/a;-><init>(II)V

    return-void
.end method

.method public synthetic constructor <init>(III)V
    .locals 0

    .line 1
    iput p3, p0, Lo0/d;->c:I

    invoke-direct {p0, p1, p2}, Lb0/a;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final a(Lf0/c;)V
    .locals 9

    iget p0, p0, Lo0/d;->c:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "CREATE TABLE IF NOT EXISTS `_new_WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `last_enqueue_time` INTEGER NOT NULL, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `run_in_foreground` INTEGER NOT NULL, `out_of_quota_policy` INTEGER NOT NULL, `period_count` INTEGER NOT NULL DEFAULT 0, `required_network_type` INTEGER NOT NULL, `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB NOT NULL, PRIMARY KEY(`id`))"

    invoke-virtual {p1, p0}, Lf0/c;->K(Ljava/lang/String;)V

    const-string p0, "INSERT INTO `_new_WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`last_enqueue_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) SELECT `id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`period_start_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers` FROM `WorkSpec`"

    invoke-virtual {p1, p0}, Lf0/c;->K(Ljava/lang/String;)V

    const-string p0, "DROP TABLE `WorkSpec`"

    invoke-virtual {p1, p0}, Lf0/c;->K(Ljava/lang/String;)V

    const-string p0, "ALTER TABLE `_new_WorkSpec` RENAME TO `WorkSpec`"

    invoke-virtual {p1, p0}, Lf0/c;->K(Ljava/lang/String;)V

    const-string p0, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)"

    invoke-virtual {p1, p0}, Lf0/c;->K(Ljava/lang/String;)V

    const-string p0, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_last_enqueue_time` ON `WorkSpec` (`last_enqueue_time`)"

    invoke-virtual {p1, p0}, Lf0/c;->K(Ljava/lang/String;)V

    const-string p0, "UPDATE workspec SET period_count = 1 WHERE last_enqueue_time <> 0 AND interval_duration <> 0"

    invoke-virtual {p1, p0}, Lf0/c;->K(Ljava/lang/String;)V

    new-instance p0, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/content/ContentValues;-><init>(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "last_enqueue_time"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/content/ContentValues;->size()I

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {p0}, Landroid/content/ContentValues;->size()I

    move-result v1

    array-length v2, v0

    add-int/2addr v2, v1

    new-array v3, v2, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "UPDATE "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Lf0/c;->f:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "WorkSpec SET "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/ContentValues;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-lez v6, :cond_0

    const-string v8, ","

    goto :goto_1

    :cond_0
    const-string v8, ""

    :goto_1
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {p0, v7}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v3, v6

    const-string v6, "=?"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, v8

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_2
    if-ge p0, v2, :cond_2

    sub-int v5, p0, v1

    aget-object v5, v0, v5

    aput-object v5, v3, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_2
    const-string p0, "last_enqueue_time = 0 AND interval_duration <> 0 "

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    const-string p0, " WHERE last_enqueue_time = 0 AND interval_duration <> 0 "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StringBuilder().apply(builderAction).toString()"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lf0/c;->h(Ljava/lang/String;)Lf0/i;

    move-result-object p0

    array-length p1, v3

    const/4 v0, 0x0

    :goto_3
    if-ge v0, p1, :cond_f

    aget-object v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    if-nez v1, :cond_4

    invoke-interface {p0, v0}, Le0/d;->E(I)V

    goto :goto_3

    :cond_4
    instance-of v2, v1, [B

    if-eqz v2, :cond_5

    check-cast v1, [B

    invoke-interface {p0, v0, v1}, Le0/d;->D(I[B)V

    goto :goto_3

    :cond_5
    instance-of v2, v1, Ljava/lang/Float;

    if-eqz v2, :cond_6

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    float-to-double v1, v1

    invoke-interface {p0, v0, v1, v2}, Le0/d;->H(ID)V

    goto :goto_3

    :cond_6
    instance-of v2, v1, Ljava/lang/Double;

    if-eqz v2, :cond_7

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-interface {p0, v0, v1, v2}, Le0/d;->H(ID)V

    goto :goto_3

    :cond_7
    instance-of v2, v1, Ljava/lang/Long;

    if-eqz v2, :cond_8

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-interface {p0, v0, v1, v2}, Le0/d;->s(IJ)V

    goto :goto_3

    :cond_8
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_9

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p0, v0, v1, v2}, Le0/d;->s(IJ)V

    goto :goto_3

    :cond_9
    instance-of v2, v1, Ljava/lang/Short;

    if-eqz v2, :cond_a

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->shortValue()S

    move-result v1

    int-to-long v1, v1

    invoke-interface {p0, v0, v1, v2}, Le0/d;->s(IJ)V

    goto :goto_3

    :cond_a
    instance-of v2, v1, Ljava/lang/Byte;

    if-eqz v2, :cond_b

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    int-to-long v1, v1

    invoke-interface {p0, v0, v1, v2}, Le0/d;->s(IJ)V

    goto :goto_3

    :cond_b
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_c

    check-cast v1, Ljava/lang/String;

    invoke-interface {p0, v0, v1}, Le0/d;->q(ILjava/lang/String;)V

    goto :goto_3

    :cond_c
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_e

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_d

    const-wide/16 v1, 0x1

    goto :goto_4

    :cond_d
    const-wide/16 v1, 0x0

    :goto_4
    invoke-interface {p0, v0, v1, v2}, Le0/d;->s(IJ)V

    goto/16 :goto_3

    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot bind "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " at index "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " Supported types: Null, ByteArray, Float, Double, Long, Int, Short, Byte, String"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    iget-object p0, p0, Lf0/i;->e:Landroid/database/sqlite/SQLiteStatement;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->executeUpdateDelete()I

    return-void

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Empty values"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const-string p0, "CREATE TABLE IF NOT EXISTS `_new_WorkSpec` (`id` TEXT NOT NULL, `state` INTEGER NOT NULL, `worker_class_name` TEXT NOT NULL, `input_merger_class_name` TEXT, `input` BLOB NOT NULL, `output` BLOB NOT NULL, `initial_delay` INTEGER NOT NULL, `interval_duration` INTEGER NOT NULL, `flex_duration` INTEGER NOT NULL, `run_attempt_count` INTEGER NOT NULL, `backoff_policy` INTEGER NOT NULL, `backoff_delay_duration` INTEGER NOT NULL, `period_start_time` INTEGER NOT NULL, `minimum_retention_duration` INTEGER NOT NULL, `schedule_requested_at` INTEGER NOT NULL, `run_in_foreground` INTEGER NOT NULL, `out_of_quota_policy` INTEGER NOT NULL, `required_network_type` INTEGER NOT NULL, `requires_charging` INTEGER NOT NULL, `requires_device_idle` INTEGER NOT NULL, `requires_battery_not_low` INTEGER NOT NULL, `requires_storage_not_low` INTEGER NOT NULL, `trigger_content_update_delay` INTEGER NOT NULL, `trigger_max_content_delay` INTEGER NOT NULL, `content_uri_triggers` BLOB NOT NULL, PRIMARY KEY(`id`))"

    invoke-virtual {p1, p0}, Lf0/c;->K(Ljava/lang/String;)V

    const-string p0, "INSERT INTO `_new_WorkSpec` (`id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`period_start_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers`) SELECT `id`,`state`,`worker_class_name`,`input_merger_class_name`,`input`,`output`,`initial_delay`,`interval_duration`,`flex_duration`,`run_attempt_count`,`backoff_policy`,`backoff_delay_duration`,`period_start_time`,`minimum_retention_duration`,`schedule_requested_at`,`run_in_foreground`,`out_of_quota_policy`,`required_network_type`,`requires_charging`,`requires_device_idle`,`requires_battery_not_low`,`requires_storage_not_low`,`trigger_content_update_delay`,`trigger_max_content_delay`,`content_uri_triggers` FROM `WorkSpec`"

    invoke-virtual {p1, p0}, Lf0/c;->K(Ljava/lang/String;)V

    const-string p0, "DROP TABLE `WorkSpec`"

    invoke-virtual {p1, p0}, Lf0/c;->K(Ljava/lang/String;)V

    const-string p0, "ALTER TABLE `_new_WorkSpec` RENAME TO `WorkSpec`"

    invoke-virtual {p1, p0}, Lf0/c;->K(Ljava/lang/String;)V

    const-string p0, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_schedule_requested_at` ON `WorkSpec` (`schedule_requested_at`)"

    invoke-virtual {p1, p0}, Lf0/c;->K(Ljava/lang/String;)V

    const-string p0, "CREATE INDEX IF NOT EXISTS `index_WorkSpec_period_start_time` ON `WorkSpec` (`period_start_time`)"

    invoke-virtual {p1, p0}, Lf0/c;->K(Ljava/lang/String;)V

    return-void

    :pswitch_1
    const-string p0, "ALTER TABLE workspec ADD COLUMN `run_in_foreground` INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, p0}, Lf0/c;->K(Ljava/lang/String;)V

    return-void

    :pswitch_2
    const-string p0, "\n    CREATE INDEX IF NOT EXISTS `index_WorkSpec_period_start_time` ON `workspec`(`period_start_time`)\n    "

    invoke-virtual {p1, p0}, Lf0/c;->K(Ljava/lang/String;)V

    return-void

    :pswitch_3
    const-string p0, "\n    CREATE TABLE IF NOT EXISTS `WorkProgress` (`work_spec_id` TEXT NOT NULL, `progress`\n    BLOB NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`)\n    REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )\n    "

    invoke-virtual {p1, p0}, Lf0/c;->K(Ljava/lang/String;)V

    return-void

    :pswitch_4
    const-string p0, "ALTER TABLE workspec ADD COLUMN `trigger_content_update_delay` INTEGER NOT NULL DEFAULT -1"

    invoke-virtual {p1, p0}, Lf0/c;->K(Ljava/lang/String;)V

    const-string p0, "ALTER TABLE workspec ADD COLUMN `trigger_max_content_delay` INTEGER NOT NULL DEFAULT -1"

    invoke-virtual {p1, p0}, Lf0/c;->K(Ljava/lang/String;)V

    return-void

    :pswitch_5
    const-string p0, "\n    UPDATE workspec SET schedule_requested_at = 0\n    WHERE state NOT IN (2, 3, 5)\n        AND schedule_requested_at = -1\n        AND interval_duration <> 0\n    "

    invoke-virtual {p1, p0}, Lf0/c;->K(Ljava/lang/String;)V

    return-void

    :pswitch_6
    const-string p0, "\n    CREATE TABLE IF NOT EXISTS `SystemIdInfo` (`work_spec_id` TEXT NOT NULL, `system_id`\n    INTEGER NOT NULL, PRIMARY KEY(`work_spec_id`), FOREIGN KEY(`work_spec_id`)\n    REFERENCES `WorkSpec`(`id`) ON UPDATE CASCADE ON DELETE CASCADE )\n    "

    invoke-virtual {p1, p0}, Lf0/c;->K(Ljava/lang/String;)V

    const-string p0, "\n    INSERT INTO SystemIdInfo(work_spec_id, system_id)\n    SELECT work_spec_id, alarm_id AS system_id FROM alarmInfo\n    "

    invoke-virtual {p1, p0}, Lf0/c;->K(Ljava/lang/String;)V

    const-string p0, "DROP TABLE IF EXISTS alarmInfo"

    invoke-virtual {p1, p0}, Lf0/c;->K(Ljava/lang/String;)V

    const-string p0, "\n                INSERT OR IGNORE INTO worktag(tag, work_spec_id)\n                SELECT worker_class_name AS tag, id AS work_spec_id FROM workspec\n                "

    invoke-virtual {p1, p0}, Lf0/c;->K(Ljava/lang/String;)V

    return-void

    :pswitch_7
    const-string p0, "DELETE FROM SystemIdInfo WHERE work_spec_id IN (SELECT work_spec_id FROM SystemIdInfo LEFT JOIN WorkSpec ON work_spec_id = id WHERE WorkSpec.id IS NULL)"

    invoke-virtual {p1, p0}, Lf0/c;->K(Ljava/lang/String;)V

    const-string p0, "ALTER TABLE `WorkSpec` ADD COLUMN `generation` INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, p0}, Lf0/c;->K(Ljava/lang/String;)V

    const-string p0, "CREATE TABLE IF NOT EXISTS `_new_SystemIdInfo` (\n            `work_spec_id` TEXT NOT NULL, \n            `generation` INTEGER NOT NULL DEFAULT 0, \n            `system_id` INTEGER NOT NULL, \n            PRIMARY KEY(`work_spec_id`, `generation`), \n            FOREIGN KEY(`work_spec_id`) REFERENCES `WorkSpec`(`id`) \n                ON UPDATE CASCADE ON DELETE CASCADE )"

    invoke-virtual {p1, p0}, Lf0/c;->K(Ljava/lang/String;)V

    const-string p0, "INSERT INTO `_new_SystemIdInfo` (`work_spec_id`,`system_id`) SELECT `work_spec_id`,`system_id` FROM `SystemIdInfo`"

    invoke-virtual {p1, p0}, Lf0/c;->K(Ljava/lang/String;)V

    const-string p0, "DROP TABLE `SystemIdInfo`"

    invoke-virtual {p1, p0}, Lf0/c;->K(Ljava/lang/String;)V

    const-string p0, "ALTER TABLE `_new_SystemIdInfo` RENAME TO `SystemIdInfo`"

    invoke-virtual {p1, p0}, Lf0/c;->K(Ljava/lang/String;)V

    return-void

    :pswitch_8
    const-string p0, "UPDATE workspec SET required_network_type = 0 WHERE required_network_type IS NULL "

    invoke-virtual {p1, p0}, Lf0/c;->K(Ljava/lang/String;)V

    const-string p0, "UPDATE workspec SET content_uri_triggers = x\'\' WHERE content_uri_triggers is NULL"

    invoke-virtual {p1, p0}, Lf0/c;->K(Ljava/lang/String;)V

    return-void

    :pswitch_9
    const-string p0, "ALTER TABLE workspec ADD COLUMN `out_of_quota_policy` INTEGER NOT NULL DEFAULT 0"

    invoke-virtual {p1, p0}, Lf0/c;->K(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
