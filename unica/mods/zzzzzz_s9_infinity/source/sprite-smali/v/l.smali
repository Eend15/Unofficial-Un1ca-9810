.class public final Lv/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:[I

.field public static final e:Landroid/util/SparseIntArray;

.field public static final f:Landroid/util/SparseIntArray;


# instance fields
.field public final a:Ljava/util/HashMap;

.field public final b:Z

.field public final c:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v0, 0x0

    const/4 v1, 0x4

    const/16 v2, 0x8

    filled-new-array {v0, v1, v2}, [I

    move-result-object v0

    sput-object v0, Lv/l;->d:[I

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lv/l;->e:Landroid/util/SparseIntArray;

    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v3, Lv/l;->f:Landroid/util/SparseIntArray;

    sget v4, Lv/n;->Constraint_layout_constraintLeft_toLeftOf:I

    const/16 v5, 0x19

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    sget v4, Lv/n;->Constraint_layout_constraintLeft_toRightOf:I

    const/16 v5, 0x1a

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    sget v4, Lv/n;->Constraint_layout_constraintRight_toLeftOf:I

    const/16 v5, 0x1d

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    sget v4, Lv/n;->Constraint_layout_constraintRight_toRightOf:I

    const/16 v5, 0x1e

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    sget v4, Lv/n;->Constraint_layout_constraintTop_toTopOf:I

    const/16 v5, 0x24

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    sget v4, Lv/n;->Constraint_layout_constraintTop_toBottomOf:I

    const/16 v5, 0x23

    invoke-virtual {v0, v4, v5}, Landroid/util/SparseIntArray;->append(II)V

    sget v4, Lv/n;->Constraint_layout_constraintBottom_toTopOf:I

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_layout_constraintBottom_toBottomOf:I

    const/4 v4, 0x3

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_layout_constraintBaseline_toBaselineOf:I

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_layout_constraintBaseline_toTopOf:I

    const/16 v4, 0x5b

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_layout_constraintBaseline_toBottomOf:I

    const/16 v4, 0x5c

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_layout_editor_absoluteX:I

    const/4 v4, 0x6

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_layout_editor_absoluteY:I

    const/4 v5, 0x7

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_layout_constraintGuide_begin:I

    const/16 v6, 0x11

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_layout_constraintGuide_end:I

    const/16 v6, 0x12

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_layout_constraintGuide_percent:I

    const/16 v6, 0x13

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_guidelineUseRtl:I

    const/16 v6, 0x63

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_android_orientation:I

    const/16 v6, 0x1b

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_layout_constraintStart_toEndOf:I

    const/16 v7, 0x20

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_layout_constraintStart_toStartOf:I

    const/16 v7, 0x21

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_layout_constraintEnd_toStartOf:I

    const/16 v7, 0xa

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_layout_constraintEnd_toEndOf:I

    const/16 v7, 0x9

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_layout_goneMarginLeft:I

    const/16 v7, 0xd

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_layout_goneMarginTop:I

    const/16 v8, 0x10

    invoke-virtual {v0, v1, v8}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_layout_goneMarginRight:I

    const/16 v9, 0xe

    invoke-virtual {v0, v1, v9}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_layout_goneMarginBottom:I

    const/16 v10, 0xb

    invoke-virtual {v0, v1, v10}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_layout_goneMarginStart:I

    const/16 v11, 0xf

    invoke-virtual {v0, v1, v11}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_layout_goneMarginEnd:I

    const/16 v12, 0xc

    invoke-virtual {v0, v1, v12}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_layout_constraintVertical_weight:I

    const/16 v13, 0x28

    invoke-virtual {v0, v1, v13}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_layout_constraintHorizontal_weight:I

    const/16 v14, 0x27

    invoke-virtual {v0, v1, v14}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_layout_constraintHorizontal_chainStyle:I

    const/16 v15, 0x29

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_layout_constraintVertical_chainStyle:I

    const/16 v15, 0x2a

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_layout_constraintHorizontal_bias:I

    const/16 v15, 0x14

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_layout_constraintVertical_bias:I

    const/16 v15, 0x25

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_layout_constraintDimensionRatio:I

    const/4 v15, 0x5

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_layout_constraintLeft_creator:I

    const/16 v15, 0x57

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_layout_constraintTop_creator:I

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_layout_constraintRight_creator:I

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_layout_constraintBottom_creator:I

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_layout_constraintBaseline_creator:I

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_android_layout_marginLeft:I

    const/16 v15, 0x18

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_android_layout_marginRight:I

    const/16 v15, 0x1c

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_android_layout_marginStart:I

    const/16 v15, 0x1f

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_android_layout_marginEnd:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_android_layout_marginTop:I

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_android_layout_marginBottom:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_android_layout_width:I

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_android_layout_height:I

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_layout_constraintWidth:I

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_layout_constraintHeight:I

    const/16 v2, 0x60

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_android_visibility:I

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_android_alpha:I

    const/16 v2, 0x2b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_android_elevation:I

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_android_rotationX:I

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_android_rotationY:I

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_android_rotation:I

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_android_scaleX:I

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_android_scaleY:I

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_android_transformPivotX:I

    const/16 v2, 0x31

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_android_transformPivotY:I

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_android_translationX:I

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_android_translationY:I

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_android_translationZ:I

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_layout_constraintWidth_default:I

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_layout_constraintHeight_default:I

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_layout_constraintWidth_max:I

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_layout_constraintHeight_max:I

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_layout_constraintWidth_min:I

    const/16 v2, 0x3a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_layout_constraintHeight_min:I

    const/16 v2, 0x3b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_layout_constraintCircle:I

    const/16 v2, 0x3d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_layout_constraintCircleRadius:I

    const/16 v2, 0x3e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_layout_constraintCircleAngle:I

    const/16 v2, 0x3f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_animateRelativeTo:I

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_transitionEasing:I

    const/16 v2, 0x41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_drawPath:I

    const/16 v2, 0x42

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_transitionPathRotate:I

    const/16 v2, 0x43

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_motionStagger:I

    const/16 v2, 0x4f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_android_id:I

    const/16 v2, 0x26

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_motionProgress:I

    const/16 v2, 0x44

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_layout_constraintWidth_percent:I

    const/16 v2, 0x45

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_layout_constraintHeight_percent:I

    const/16 v2, 0x46

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_layout_wrapBehaviorInParent:I

    const/16 v2, 0x61

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_chainUseRtl:I

    const/16 v2, 0x47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_barrierDirection:I

    const/16 v2, 0x48

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_barrierMargin:I

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_constraint_referenced_ids:I

    const/16 v2, 0x4a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_barrierAllowsGoneWidgets:I

    const/16 v2, 0x4b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_pathMotionArc:I

    const/16 v2, 0x4c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_layout_constraintTag:I

    const/16 v2, 0x4d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_visibilityMode:I

    const/16 v2, 0x4e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_layout_constrainedWidth:I

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_layout_constrainedHeight:I

    const/16 v2, 0x51

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_polarRelativeTo:I

    const/16 v2, 0x52

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_transformPivotTarget:I

    const/16 v2, 0x53

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_quantizeMotionSteps:I

    const/16 v2, 0x54

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_quantizeMotionPhase:I

    const/16 v2, 0x55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v1, Lv/n;->Constraint_quantizeMotionInterpolator:I

    const/16 v2, 0x56

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_layout_editor_absoluteY:I

    invoke-virtual {v3, v0, v4}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_layout_editor_absoluteY:I

    invoke-virtual {v3, v0, v5}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_android_orientation:I

    invoke-virtual {v3, v0, v6}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_layout_goneMarginLeft:I

    invoke-virtual {v3, v0, v7}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_layout_goneMarginTop:I

    invoke-virtual {v3, v0, v8}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_layout_goneMarginRight:I

    invoke-virtual {v3, v0, v9}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_layout_goneMarginBottom:I

    invoke-virtual {v3, v0, v10}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_layout_goneMarginStart:I

    invoke-virtual {v3, v0, v11}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_layout_goneMarginEnd:I

    invoke-virtual {v3, v0, v12}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_layout_constraintVertical_weight:I

    invoke-virtual {v3, v0, v13}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_layout_constraintHorizontal_weight:I

    invoke-virtual {v3, v0, v14}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_layout_constraintHorizontal_chainStyle:I

    const/16 v1, 0x29

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_layout_constraintVertical_chainStyle:I

    const/16 v1, 0x2a

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_layout_constraintHorizontal_bias:I

    const/16 v1, 0x14

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_layout_constraintVertical_bias:I

    const/16 v1, 0x25

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_layout_constraintDimensionRatio:I

    const/4 v1, 0x5

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_layout_constraintLeft_creator:I

    const/16 v1, 0x57

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_layout_constraintTop_creator:I

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_layout_constraintRight_creator:I

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_layout_constraintBottom_creator:I

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_layout_constraintBaseline_creator:I

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_android_layout_marginLeft:I

    const/16 v1, 0x18

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_android_layout_marginRight:I

    const/16 v1, 0x1c

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_android_layout_marginStart:I

    invoke-virtual {v3, v0, v15}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_android_layout_marginEnd:I

    const/16 v1, 0x8

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_android_layout_marginTop:I

    const/16 v1, 0x22

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_android_layout_marginBottom:I

    const/4 v1, 0x2

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_android_layout_width:I

    const/16 v1, 0x17

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_android_layout_height:I

    const/16 v1, 0x15

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_layout_constraintWidth:I

    const/16 v1, 0x5f

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_layout_constraintHeight:I

    const/16 v1, 0x60

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_android_visibility:I

    const/16 v1, 0x16

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_android_alpha:I

    const/16 v1, 0x2b

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_android_elevation:I

    const/16 v1, 0x2c

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_android_rotationX:I

    const/16 v1, 0x2d

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_android_rotationY:I

    const/16 v1, 0x2e

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_android_rotation:I

    const/16 v1, 0x3c

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_android_scaleX:I

    const/16 v1, 0x2f

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_android_scaleY:I

    const/16 v1, 0x30

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_android_transformPivotX:I

    const/16 v1, 0x31

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_android_transformPivotY:I

    const/16 v1, 0x32

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_android_translationX:I

    const/16 v1, 0x33

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_android_translationY:I

    const/16 v1, 0x34

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_android_translationZ:I

    const/16 v1, 0x35

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_layout_constraintWidth_default:I

    const/16 v1, 0x36

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_layout_constraintHeight_default:I

    const/16 v1, 0x37

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_layout_constraintWidth_max:I

    const/16 v1, 0x38

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_layout_constraintHeight_max:I

    const/16 v1, 0x39

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_layout_constraintWidth_min:I

    const/16 v1, 0x3a

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_layout_constraintHeight_min:I

    const/16 v1, 0x3b

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_layout_constraintCircleRadius:I

    const/16 v1, 0x3e

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_layout_constraintCircleAngle:I

    const/16 v1, 0x3f

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_animateRelativeTo:I

    const/16 v1, 0x40

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_transitionEasing:I

    const/16 v1, 0x41

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_drawPath:I

    const/16 v1, 0x42

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_transitionPathRotate:I

    const/16 v1, 0x43

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_motionStagger:I

    const/16 v1, 0x4f

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_android_id:I

    const/16 v1, 0x26

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_motionTarget:I

    const/16 v1, 0x62

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_motionProgress:I

    const/16 v1, 0x44

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_layout_constraintWidth_percent:I

    const/16 v1, 0x45

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_layout_constraintHeight_percent:I

    const/16 v1, 0x46

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_chainUseRtl:I

    const/16 v1, 0x47

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_barrierDirection:I

    const/16 v1, 0x48

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_barrierMargin:I

    const/16 v1, 0x49

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_constraint_referenced_ids:I

    const/16 v1, 0x4a

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_barrierAllowsGoneWidgets:I

    const/16 v1, 0x4b

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_pathMotionArc:I

    const/16 v1, 0x4c

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_layout_constraintTag:I

    const/16 v1, 0x4d

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_visibilityMode:I

    const/16 v1, 0x4e

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_layout_constrainedWidth:I

    const/16 v1, 0x50

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_layout_constrainedHeight:I

    const/16 v1, 0x51

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_polarRelativeTo:I

    const/16 v1, 0x52

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_transformPivotTarget:I

    const/16 v1, 0x53

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_quantizeMotionSteps:I

    const/16 v1, 0x54

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_quantizeMotionPhase:I

    const/16 v1, 0x55

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_quantizeMotionInterpolator:I

    const/16 v1, 0x56

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    sget v0, Lv/n;->ConstraintOverride_layout_wrapBehaviorInParent:I

    const/16 v1, 0x61

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lv/l;->a:Ljava/util/HashMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lv/l;->b:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lv/l;->c:Ljava/util/HashMap;

    return-void
.end method

.method public static c(Landroidx/constraintlayout/widget/Barrier;Ljava/lang/String;)[I
    .locals 10

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    array-length v1, p1

    new-array v1, v1, [I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    array-length v5, p1

    if-ge v3, v5, :cond_4

    aget-object v5, p1, v3

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    :try_start_0
    const-class v7, Lv/m;

    invoke-virtual {v7, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move v7, v2

    :goto_1
    if-nez v7, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "id"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v5, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    :cond_0
    if-nez v7, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    instance-of v8, v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v5, :cond_1

    iget-object v9, v8, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Ljava/util/HashMap;

    if-eqz v9, :cond_2

    invoke-virtual {v9, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v6, v8, Landroidx/constraintlayout/widget/ConstraintLayout;->o:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_2

    :cond_1
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    :goto_2
    if-eqz v6, :cond_3

    instance-of v5, v6, Ljava/lang/Integer;

    if-eqz v5, :cond_3

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    :cond_3
    add-int/lit8 v5, v4, 0x1

    aput v7, v1, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_0

    :cond_4
    array-length p0, p1

    if-eq v4, p0, :cond_5

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    :cond_5
    return-object v1
.end method

.method public static d(Landroid/content/Context;Landroid/util/AttributeSet;Z)Lv/g;
    .locals 21

    new-instance v1, Lv/g;

    invoke-direct {v1}, Lv/g;-><init>()V

    if-eqz p2, :cond_0

    sget-object v2, Lv/n;->ConstraintOverride:[I

    :goto_0
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    goto :goto_1

    :cond_0
    sget-object v2, Lv/n;->Constraint:[I

    goto :goto_0

    :goto_1
    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    sget-object v3, Lv/l;->d:[I

    sget-object v4, Lv/l;->e:Landroid/util/SparseIntArray;

    iget-object v5, v1, Lv/g;->b:Lv/j;

    sget-object v6, Lr/a;->a:[Ljava/lang/String;

    iget-object v7, v1, Lv/g;->e:Lv/k;

    iget-object v8, v1, Lv/g;->c:Lv/i;

    iget-object v9, v1, Lv/g;->d:Lv/h;

    const-string v10, "CURRENTLY UNSUPPORTED"

    const-string v11, "/"

    const-string v12, "unused attribute 0x"

    const-string v13, "Unknown attribute 0x"

    const-string v15, "   "

    const-string v0, "ConstraintSet"

    if-eqz p2, :cond_7

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v14

    move-object/from16 v16, v3

    new-instance v3, Lv/f;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object/from16 v17, v6

    const/16 v6, 0xa

    move-object/from16 v18, v10

    new-array v10, v6, [I

    iput-object v10, v3, Lv/f;->a:[I

    new-array v10, v6, [I

    iput-object v10, v3, Lv/f;->b:[I

    const/4 v10, 0x0

    iput v10, v3, Lv/f;->c:I

    new-array v10, v6, [I

    iput-object v10, v3, Lv/f;->d:[I

    new-array v6, v6, [F

    iput-object v6, v3, Lv/f;->e:[F

    const/4 v6, 0x0

    iput v6, v3, Lv/f;->f:I

    const/4 v10, 0x5

    new-array v6, v10, [I

    iput-object v6, v3, Lv/f;->g:[I

    new-array v6, v10, [Ljava/lang/String;

    iput-object v6, v3, Lv/f;->h:[Ljava/lang/String;

    const/4 v6, 0x0

    iput v6, v3, Lv/f;->i:I

    const/4 v10, 0x4

    new-array v6, v10, [I

    iput-object v6, v3, Lv/f;->j:[I

    new-array v6, v10, [Z

    iput-object v6, v3, Lv/f;->k:[Z

    const/4 v6, 0x0

    iput v6, v3, Lv/f;->l:I

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v14, :cond_e

    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v10

    move/from16 v19, v14

    sget-object v14, Lv/l;->f:Landroid/util/SparseIntArray;

    invoke-virtual {v14, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v14

    packed-switch v14, :pswitch_data_0

    :pswitch_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v20, v13

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_3
    const/4 v10, 0x1

    :goto_4
    const/4 v13, 0x5

    goto/16 :goto_6

    :pswitch_1
    move-object/from16 v20, v13

    iget-boolean v13, v9, Lv/h;->g:Z

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    const/16 v13, 0x63

    invoke-virtual {v3, v13, v10}, Lv/f;->d(IZ)V

    goto :goto_3

    :pswitch_2
    move-object/from16 v20, v13

    sget v13, Lu/a;->t:I

    invoke-virtual {v2, v10}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    iget v13, v13, Landroid/util/TypedValue;->type:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_2

    invoke-virtual {v2, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    goto :goto_3

    :cond_2
    iget v13, v1, Lv/g;->a:I

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    iput v10, v1, Lv/g;->a:I

    goto :goto_3

    :pswitch_3
    move-object/from16 v20, v13

    iget v13, v9, Lv/h;->o0:I

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    const/16 v13, 0x61

    invoke-virtual {v3, v13, v10}, Lv/f;->b(II)V

    goto :goto_3

    :pswitch_4
    move-object/from16 v20, v13

    const/4 v13, 0x1

    invoke-static {v3, v2, v10, v13}, Lv/l;->g(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    move v10, v13

    goto :goto_4

    :pswitch_5
    move-object/from16 v20, v13

    const/4 v13, 0x0

    invoke-static {v3, v2, v10, v13}, Lv/l;->g(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    goto :goto_3

    :pswitch_6
    move-object/from16 v20, v13

    iget v13, v9, Lv/h;->S:I

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    const/16 v13, 0x5e

    invoke-virtual {v3, v13, v10}, Lv/f;->b(II)V

    goto :goto_3

    :pswitch_7
    move-object/from16 v20, v13

    iget v13, v9, Lv/h;->L:I

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    const/16 v13, 0x5d

    invoke-virtual {v3, v13, v10}, Lv/f;->b(II)V

    goto :goto_3

    :pswitch_8
    move-object/from16 v20, v13

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Landroid/util/SparseIntArray;->get(I)I

    move-result v10

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_9
    move-object/from16 v20, v13

    invoke-virtual {v2, v10}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    iget v13, v13, Landroid/util/TypedValue;->type:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    const/4 v14, -0x1

    invoke-virtual {v2, v10, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    iput v10, v8, Lv/i;->i:I

    const/16 v13, 0x59

    invoke-virtual {v3, v13, v10}, Lv/f;->b(II)V

    iget v10, v8, Lv/i;->i:I

    if-eq v10, v14, :cond_1

    const/4 v10, -0x2

    const/16 v13, 0x58

    invoke-virtual {v3, v13, v10}, Lv/f;->b(II)V

    goto/16 :goto_3

    :cond_3
    const/4 v14, 0x3

    if-ne v13, v14, :cond_5

    invoke-virtual {v2, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v8, Lv/i;->h:Ljava/lang/String;

    const/16 v14, 0x5a

    invoke-virtual {v3, v14, v13}, Lv/f;->c(ILjava/lang/String;)V

    iget-object v13, v8, Lv/i;->h:Ljava/lang/String;

    invoke-virtual {v13, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    if-lez v13, :cond_4

    const/4 v13, -0x1

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    iput v10, v8, Lv/i;->i:I

    const/16 v14, 0x59

    invoke-virtual {v3, v14, v10}, Lv/f;->b(II)V

    const/4 v10, -0x2

    const/16 v14, 0x58

    invoke-virtual {v3, v14, v10}, Lv/f;->b(II)V

    goto/16 :goto_3

    :cond_4
    const/4 v13, -0x1

    const/16 v14, 0x58

    invoke-virtual {v3, v14, v13}, Lv/f;->b(II)V

    goto/16 :goto_3

    :cond_5
    const/16 v14, 0x58

    iget v13, v8, Lv/i;->i:I

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v10

    invoke-virtual {v3, v14, v10}, Lv/f;->b(II)V

    goto/16 :goto_3

    :pswitch_a
    move-object/from16 v20, v13

    iget v13, v8, Lv/i;->f:F

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    const/16 v13, 0x55

    invoke-virtual {v3, v10, v13}, Lv/f;->a(FI)V

    goto/16 :goto_3

    :pswitch_b
    move-object/from16 v20, v13

    iget v13, v8, Lv/i;->g:I

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v10

    const/16 v13, 0x54

    invoke-virtual {v3, v13, v10}, Lv/f;->b(II)V

    goto/16 :goto_3

    :pswitch_c
    move-object/from16 v20, v13

    iget v13, v7, Lv/k;->h:I

    invoke-static {v2, v10, v13}, Lv/l;->f(Landroid/content/res/TypedArray;II)I

    move-result v10

    const/16 v13, 0x53

    invoke-virtual {v3, v13, v10}, Lv/f;->b(II)V

    goto/16 :goto_3

    :pswitch_d
    move-object/from16 v20, v13

    iget v13, v8, Lv/i;->b:I

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v10

    const/16 v13, 0x52

    invoke-virtual {v3, v13, v10}, Lv/f;->b(II)V

    goto/16 :goto_3

    :pswitch_e
    move-object/from16 v20, v13

    iget-boolean v13, v9, Lv/h;->m0:Z

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    const/16 v13, 0x51

    invoke-virtual {v3, v13, v10}, Lv/f;->d(IZ)V

    goto/16 :goto_3

    :pswitch_f
    move-object/from16 v20, v13

    iget-boolean v13, v9, Lv/h;->l0:Z

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    const/16 v13, 0x50

    invoke-virtual {v3, v13, v10}, Lv/f;->d(IZ)V

    goto/16 :goto_3

    :pswitch_10
    move-object/from16 v20, v13

    iget v13, v8, Lv/i;->d:F

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    const/16 v13, 0x4f

    invoke-virtual {v3, v10, v13}, Lv/f;->a(FI)V

    goto/16 :goto_3

    :pswitch_11
    move-object/from16 v20, v13

    iget v13, v5, Lv/j;->b:I

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    const/16 v13, 0x4e

    invoke-virtual {v3, v13, v10}, Lv/f;->b(II)V

    goto/16 :goto_3

    :pswitch_12
    move-object/from16 v20, v13

    const/16 v13, 0x4d

    invoke-virtual {v2, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v13, v10}, Lv/f;->c(ILjava/lang/String;)V

    goto/16 :goto_3

    :pswitch_13
    move-object/from16 v20, v13

    iget v13, v8, Lv/i;->c:I

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    const/16 v13, 0x4c

    invoke-virtual {v3, v13, v10}, Lv/f;->b(II)V

    goto/16 :goto_3

    :pswitch_14
    move-object/from16 v20, v13

    iget-boolean v13, v9, Lv/h;->n0:Z

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    const/16 v13, 0x4b

    invoke-virtual {v3, v13, v10}, Lv/f;->d(IZ)V

    goto/16 :goto_3

    :pswitch_15
    move-object/from16 v20, v13

    const/16 v13, 0x4a

    invoke-virtual {v2, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v13, v10}, Lv/f;->c(ILjava/lang/String;)V

    goto/16 :goto_3

    :pswitch_16
    move-object/from16 v20, v13

    iget v13, v9, Lv/h;->g0:I

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    const/16 v13, 0x49

    invoke-virtual {v3, v13, v10}, Lv/f;->b(II)V

    goto/16 :goto_3

    :pswitch_17
    move-object/from16 v20, v13

    iget v13, v9, Lv/h;->f0:I

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    const/16 v13, 0x48

    invoke-virtual {v3, v13, v10}, Lv/f;->b(II)V

    goto/16 :goto_3

    :pswitch_18
    move-object/from16 v20, v13

    move-object/from16 v13, v18

    invoke-static {v0, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :pswitch_19
    move-object/from16 v20, v13

    move-object/from16 v13, v18

    const/16 v14, 0x46

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    invoke-virtual {v3, v10, v14}, Lv/f;->a(FI)V

    goto/16 :goto_3

    :pswitch_1a
    move-object/from16 v20, v13

    const/high16 v13, 0x3f800000    # 1.0f

    const/16 v14, 0x45

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    invoke-virtual {v3, v10, v14}, Lv/f;->a(FI)V

    goto/16 :goto_3

    :pswitch_1b
    move-object/from16 v20, v13

    iget v13, v5, Lv/j;->d:F

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    const/16 v13, 0x44

    invoke-virtual {v3, v10, v13}, Lv/f;->a(FI)V

    goto/16 :goto_3

    :pswitch_1c
    move-object/from16 v20, v13

    iget v13, v8, Lv/i;->e:F

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    const/16 v13, 0x43

    invoke-virtual {v3, v10, v13}, Lv/f;->a(FI)V

    goto/16 :goto_3

    :pswitch_1d
    move-object/from16 v20, v13

    const/16 v13, 0x42

    const/4 v14, 0x0

    invoke-virtual {v2, v10, v14}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    invoke-virtual {v3, v13, v10}, Lv/f;->b(II)V

    goto/16 :goto_3

    :pswitch_1e
    move-object/from16 v20, v13

    const/4 v14, 0x0

    invoke-virtual {v2, v10}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v13

    iget v13, v13, Landroid/util/TypedValue;->type:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_6

    invoke-virtual {v2, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v13, 0x41

    invoke-virtual {v3, v13, v10}, Lv/f;->c(ILjava/lang/String;)V

    goto/16 :goto_3

    :cond_6
    const/16 v13, 0x41

    const/4 v14, 0x0

    invoke-virtual {v2, v10, v14}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v10

    aget-object v10, v17, v10

    invoke-virtual {v3, v13, v10}, Lv/f;->c(ILjava/lang/String;)V

    goto/16 :goto_3

    :pswitch_1f
    move-object/from16 v20, v13

    iget v13, v8, Lv/i;->a:I

    invoke-static {v2, v10, v13}, Lv/l;->f(Landroid/content/res/TypedArray;II)I

    move-result v10

    const/16 v13, 0x40

    invoke-virtual {v3, v13, v10}, Lv/f;->b(II)V

    goto/16 :goto_3

    :pswitch_20
    move-object/from16 v20, v13

    iget v13, v9, Lv/h;->B:F

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    const/16 v13, 0x3f

    invoke-virtual {v3, v10, v13}, Lv/f;->a(FI)V

    goto/16 :goto_3

    :pswitch_21
    move-object/from16 v20, v13

    iget v13, v9, Lv/h;->A:I

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    const/16 v13, 0x3e

    invoke-virtual {v3, v13, v10}, Lv/f;->b(II)V

    goto/16 :goto_3

    :pswitch_22
    move-object/from16 v20, v13

    iget v13, v7, Lv/k;->a:F

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    const/16 v13, 0x3c

    invoke-virtual {v3, v10, v13}, Lv/f;->a(FI)V

    goto/16 :goto_3

    :pswitch_23
    move-object/from16 v20, v13

    iget v13, v9, Lv/h;->c0:I

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    const/16 v13, 0x3b

    invoke-virtual {v3, v13, v10}, Lv/f;->b(II)V

    goto/16 :goto_3

    :pswitch_24
    move-object/from16 v20, v13

    iget v13, v9, Lv/h;->b0:I

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    const/16 v13, 0x3a

    invoke-virtual {v3, v13, v10}, Lv/f;->b(II)V

    goto/16 :goto_3

    :pswitch_25
    move-object/from16 v20, v13

    iget v13, v9, Lv/h;->a0:I

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    const/16 v13, 0x39

    invoke-virtual {v3, v13, v10}, Lv/f;->b(II)V

    goto/16 :goto_3

    :pswitch_26
    move-object/from16 v20, v13

    iget v13, v9, Lv/h;->Z:I

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    const/16 v13, 0x38

    invoke-virtual {v3, v13, v10}, Lv/f;->b(II)V

    goto/16 :goto_3

    :pswitch_27
    move-object/from16 v20, v13

    iget v13, v9, Lv/h;->Y:I

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    const/16 v13, 0x37

    invoke-virtual {v3, v13, v10}, Lv/f;->b(II)V

    goto/16 :goto_3

    :pswitch_28
    move-object/from16 v20, v13

    iget v13, v9, Lv/h;->X:I

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    const/16 v13, 0x36

    invoke-virtual {v3, v13, v10}, Lv/f;->b(II)V

    goto/16 :goto_3

    :pswitch_29
    move-object/from16 v20, v13

    iget v13, v7, Lv/k;->k:F

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    const/16 v13, 0x35

    invoke-virtual {v3, v10, v13}, Lv/f;->a(FI)V

    goto/16 :goto_3

    :pswitch_2a
    move-object/from16 v20, v13

    iget v13, v7, Lv/k;->j:F

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    const/16 v13, 0x34

    invoke-virtual {v3, v10, v13}, Lv/f;->a(FI)V

    goto/16 :goto_3

    :pswitch_2b
    move-object/from16 v20, v13

    iget v13, v7, Lv/k;->i:F

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    const/16 v13, 0x33

    invoke-virtual {v3, v10, v13}, Lv/f;->a(FI)V

    goto/16 :goto_3

    :pswitch_2c
    move-object/from16 v20, v13

    iget v13, v7, Lv/k;->g:F

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    const/16 v13, 0x32

    invoke-virtual {v3, v10, v13}, Lv/f;->a(FI)V

    goto/16 :goto_3

    :pswitch_2d
    move-object/from16 v20, v13

    iget v13, v7, Lv/k;->f:F

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    const/16 v13, 0x31

    invoke-virtual {v3, v10, v13}, Lv/f;->a(FI)V

    goto/16 :goto_3

    :pswitch_2e
    move-object/from16 v20, v13

    iget v13, v7, Lv/k;->e:F

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    const/16 v13, 0x30

    invoke-virtual {v3, v10, v13}, Lv/f;->a(FI)V

    goto/16 :goto_3

    :pswitch_2f
    move-object/from16 v20, v13

    iget v13, v7, Lv/k;->d:F

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    const/16 v13, 0x2f

    invoke-virtual {v3, v10, v13}, Lv/f;->a(FI)V

    goto/16 :goto_3

    :pswitch_30
    move-object/from16 v20, v13

    iget v13, v7, Lv/k;->c:F

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    const/16 v13, 0x2e

    invoke-virtual {v3, v10, v13}, Lv/f;->a(FI)V

    goto/16 :goto_3

    :pswitch_31
    move-object/from16 v20, v13

    iget v13, v7, Lv/k;->b:F

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    const/16 v13, 0x2d

    invoke-virtual {v3, v10, v13}, Lv/f;->a(FI)V

    goto/16 :goto_3

    :pswitch_32
    move-object/from16 v20, v13

    const/16 v13, 0x2c

    const/4 v14, 0x1

    invoke-virtual {v3, v13, v14}, Lv/f;->d(IZ)V

    iget v14, v7, Lv/k;->m:F

    invoke-virtual {v2, v10, v14}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v10

    invoke-virtual {v3, v10, v13}, Lv/f;->a(FI)V

    goto/16 :goto_3

    :pswitch_33
    move-object/from16 v20, v13

    iget v13, v5, Lv/j;->c:F

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    const/16 v13, 0x2b

    invoke-virtual {v3, v10, v13}, Lv/f;->a(FI)V

    goto/16 :goto_3

    :pswitch_34
    move-object/from16 v20, v13

    iget v13, v9, Lv/h;->W:I

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    const/16 v13, 0x2a

    invoke-virtual {v3, v13, v10}, Lv/f;->b(II)V

    goto/16 :goto_3

    :pswitch_35
    move-object/from16 v20, v13

    iget v13, v9, Lv/h;->V:I

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    const/16 v13, 0x29

    invoke-virtual {v3, v13, v10}, Lv/f;->b(II)V

    goto/16 :goto_3

    :pswitch_36
    move-object/from16 v20, v13

    iget v13, v9, Lv/h;->T:F

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    const/16 v13, 0x28

    invoke-virtual {v3, v10, v13}, Lv/f;->a(FI)V

    goto/16 :goto_3

    :pswitch_37
    move-object/from16 v20, v13

    iget v13, v9, Lv/h;->U:F

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    const/16 v13, 0x27

    invoke-virtual {v3, v10, v13}, Lv/f;->a(FI)V

    goto/16 :goto_3

    :pswitch_38
    move-object/from16 v20, v13

    iget v13, v1, Lv/g;->a:I

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    iput v10, v1, Lv/g;->a:I

    const/16 v13, 0x26

    invoke-virtual {v3, v13, v10}, Lv/f;->b(II)V

    goto/16 :goto_3

    :pswitch_39
    move-object/from16 v20, v13

    iget v13, v9, Lv/h;->x:F

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    const/16 v13, 0x25

    invoke-virtual {v3, v10, v13}, Lv/f;->a(FI)V

    goto/16 :goto_3

    :pswitch_3a
    move-object/from16 v20, v13

    iget v13, v9, Lv/h;->H:I

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    const/16 v13, 0x22

    invoke-virtual {v3, v13, v10}, Lv/f;->b(II)V

    goto/16 :goto_3

    :pswitch_3b
    move-object/from16 v20, v13

    iget v13, v9, Lv/h;->K:I

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    const/16 v13, 0x1f

    invoke-virtual {v3, v13, v10}, Lv/f;->b(II)V

    goto/16 :goto_3

    :pswitch_3c
    move-object/from16 v20, v13

    iget v13, v9, Lv/h;->G:I

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    const/16 v13, 0x1c

    invoke-virtual {v3, v13, v10}, Lv/f;->b(II)V

    goto/16 :goto_3

    :pswitch_3d
    move-object/from16 v20, v13

    iget v13, v9, Lv/h;->E:I

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    const/16 v13, 0x1b

    invoke-virtual {v3, v13, v10}, Lv/f;->b(II)V

    goto/16 :goto_3

    :pswitch_3e
    move-object/from16 v20, v13

    iget v13, v9, Lv/h;->F:I

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    const/16 v13, 0x18

    invoke-virtual {v3, v13, v10}, Lv/f;->b(II)V

    goto/16 :goto_3

    :pswitch_3f
    move-object/from16 v20, v13

    iget v13, v9, Lv/h;->b:I

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v10

    const/16 v13, 0x17

    invoke-virtual {v3, v13, v10}, Lv/f;->b(II)V

    goto/16 :goto_3

    :pswitch_40
    move-object/from16 v20, v13

    iget v13, v5, Lv/j;->a:I

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    aget v10, v16, v10

    const/16 v13, 0x16

    invoke-virtual {v3, v13, v10}, Lv/f;->b(II)V

    goto/16 :goto_3

    :pswitch_41
    move-object/from16 v20, v13

    iget v13, v9, Lv/h;->c:I

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v10

    const/16 v13, 0x15

    invoke-virtual {v3, v13, v10}, Lv/f;->b(II)V

    goto/16 :goto_3

    :pswitch_42
    move-object/from16 v20, v13

    iget v13, v9, Lv/h;->w:F

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    const/16 v13, 0x14

    invoke-virtual {v3, v10, v13}, Lv/f;->a(FI)V

    goto/16 :goto_3

    :pswitch_43
    move-object/from16 v20, v13

    iget v13, v9, Lv/h;->f:F

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    const/16 v13, 0x13

    invoke-virtual {v3, v10, v13}, Lv/f;->a(FI)V

    goto/16 :goto_3

    :pswitch_44
    move-object/from16 v20, v13

    iget v13, v9, Lv/h;->e:I

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v10

    const/16 v13, 0x12

    invoke-virtual {v3, v13, v10}, Lv/f;->b(II)V

    goto/16 :goto_3

    :pswitch_45
    move-object/from16 v20, v13

    iget v13, v9, Lv/h;->d:I

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v10

    const/16 v13, 0x11

    invoke-virtual {v3, v13, v10}, Lv/f;->b(II)V

    goto/16 :goto_3

    :pswitch_46
    move-object/from16 v20, v13

    iget v13, v9, Lv/h;->N:I

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    const/16 v13, 0x10

    invoke-virtual {v3, v13, v10}, Lv/f;->b(II)V

    goto/16 :goto_3

    :pswitch_47
    move-object/from16 v20, v13

    iget v13, v9, Lv/h;->R:I

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    const/16 v13, 0xf

    invoke-virtual {v3, v13, v10}, Lv/f;->b(II)V

    goto/16 :goto_3

    :pswitch_48
    move-object/from16 v20, v13

    iget v13, v9, Lv/h;->O:I

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    const/16 v13, 0xe

    invoke-virtual {v3, v13, v10}, Lv/f;->b(II)V

    goto/16 :goto_3

    :pswitch_49
    move-object/from16 v20, v13

    iget v13, v9, Lv/h;->M:I

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    const/16 v13, 0xd

    invoke-virtual {v3, v13, v10}, Lv/f;->b(II)V

    goto/16 :goto_3

    :pswitch_4a
    move-object/from16 v20, v13

    iget v13, v9, Lv/h;->Q:I

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    const/16 v13, 0xc

    invoke-virtual {v3, v13, v10}, Lv/f;->b(II)V

    goto/16 :goto_3

    :pswitch_4b
    move-object/from16 v20, v13

    iget v13, v9, Lv/h;->P:I

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    const/16 v13, 0xb

    invoke-virtual {v3, v13, v10}, Lv/f;->b(II)V

    goto/16 :goto_3

    :pswitch_4c
    move-object/from16 v20, v13

    iget v13, v9, Lv/h;->J:I

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    const/16 v13, 0x8

    invoke-virtual {v3, v13, v10}, Lv/f;->b(II)V

    goto/16 :goto_3

    :pswitch_4d
    move-object/from16 v20, v13

    iget v13, v9, Lv/h;->D:I

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v10

    const/4 v13, 0x7

    invoke-virtual {v3, v13, v10}, Lv/f;->b(II)V

    goto/16 :goto_3

    :pswitch_4e
    move-object/from16 v20, v13

    iget v13, v9, Lv/h;->C:I

    invoke-virtual {v2, v10, v13}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v10

    const/4 v13, 0x6

    invoke-virtual {v3, v13, v10}, Lv/f;->b(II)V

    goto/16 :goto_3

    :pswitch_4f
    move-object/from16 v20, v13

    invoke-virtual {v2, v10}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/4 v13, 0x5

    invoke-virtual {v3, v13, v10}, Lv/f;->c(ILjava/lang/String;)V

    :goto_5
    const/4 v10, 0x1

    goto :goto_6

    :pswitch_50
    move-object/from16 v20, v13

    const/4 v13, 0x5

    iget v14, v9, Lv/h;->I:I

    invoke-virtual {v2, v10, v14}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    const/4 v14, 0x2

    invoke-virtual {v3, v14, v10}, Lv/f;->b(II)V

    goto :goto_5

    :goto_6
    add-int/2addr v6, v10

    move/from16 v14, v19

    move-object/from16 v13, v20

    goto/16 :goto_2

    :cond_7
    move-object/from16 v16, v3

    move-object/from16 v17, v6

    move-object/from16 v18, v10

    move-object/from16 v20, v13

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v3

    const/4 v10, 0x0

    :goto_7
    if-ge v10, v3, :cond_d

    invoke-virtual {v2, v10}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v6

    sget v13, Lv/n;->Constraint_android_id:I

    if-eq v6, v13, :cond_8

    sget v13, Lv/n;->Constraint_android_layout_marginStart:I

    if-eq v13, v6, :cond_8

    sget v13, Lv/n;->Constraint_android_layout_marginEnd:I

    if-eq v13, v6, :cond_8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_8
    invoke-virtual {v4, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v13

    packed-switch v13, :pswitch_data_1

    :pswitch_51
    new-instance v13, Ljava/lang/StringBuilder;

    move-object/from16 v14, v20

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move/from16 p2, v3

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_8
    move-object/from16 v13, v18

    const/4 v3, 0x0

    :goto_9
    move-object/from16 v18, v0

    :goto_a
    const/4 v0, 0x1

    goto/16 :goto_e

    :pswitch_52
    move/from16 p2, v3

    move-object/from16 v14, v20

    iget v3, v9, Lv/h;->o0:I

    invoke-virtual {v2, v6, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v9, Lv/h;->o0:I

    goto :goto_8

    :pswitch_53
    move/from16 p2, v3

    move-object/from16 v14, v20

    const/4 v3, 0x1

    invoke-static {v9, v2, v6, v3}, Lv/l;->g(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    move-object/from16 v13, v18

    move-object/from16 v18, v0

    move v0, v3

    :goto_b
    const/4 v3, 0x0

    goto/16 :goto_e

    :pswitch_54
    move/from16 p2, v3

    move-object/from16 v14, v20

    const/4 v3, 0x0

    invoke-static {v9, v2, v6, v3}, Lv/l;->g(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    move-object/from16 v13, v18

    goto :goto_9

    :pswitch_55
    move/from16 p2, v3

    move-object/from16 v14, v20

    iget v3, v9, Lv/h;->S:I

    invoke-virtual {v2, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v9, Lv/h;->S:I

    goto :goto_8

    :pswitch_56
    move/from16 p2, v3

    move-object/from16 v14, v20

    iget v3, v9, Lv/h;->L:I

    invoke-virtual {v2, v6, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v9, Lv/h;->L:I

    goto :goto_8

    :pswitch_57
    move/from16 p2, v3

    move-object/from16 v14, v20

    iget v3, v9, Lv/h;->r:I

    invoke-static {v2, v6, v3}, Lv/l;->f(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, v9, Lv/h;->r:I

    goto :goto_8

    :pswitch_58
    move/from16 p2, v3

    move-object/from16 v14, v20

    iget v3, v9, Lv/h;->q:I

    invoke-static {v2, v6, v3}, Lv/l;->f(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, v9, Lv/h;->q:I

    goto :goto_8

    :pswitch_59
    move/from16 p2, v3

    move-object/from16 v14, v20

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :pswitch_5a
    move/from16 p2, v3

    move-object/from16 v14, v20

    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    iget v3, v3, Landroid/util/TypedValue;->type:I

    const/4 v13, 0x1

    if-ne v3, v13, :cond_a

    const/4 v13, -0x1

    invoke-virtual {v2, v6, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v8, Lv/i;->i:I

    goto/16 :goto_8

    :cond_a
    const/4 v13, 0x3

    if-ne v3, v13, :cond_b

    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lv/i;->h:Ljava/lang/String;

    invoke-virtual {v3, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_9

    const/4 v3, -0x1

    invoke-virtual {v2, v6, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v8, Lv/i;->i:I

    goto/16 :goto_8

    :cond_b
    const/4 v3, -0x1

    iget v13, v8, Lv/i;->i:I

    invoke-virtual {v2, v6, v13}, Landroid/content/res/TypedArray;->getInteger(II)I

    goto/16 :goto_8

    :pswitch_5b
    move/from16 p2, v3

    move-object/from16 v14, v20

    const/4 v3, -0x1

    iget v13, v8, Lv/i;->f:F

    invoke-virtual {v2, v6, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v8, Lv/i;->f:F

    goto/16 :goto_8

    :pswitch_5c
    move/from16 p2, v3

    move-object/from16 v14, v20

    const/4 v3, -0x1

    iget v13, v8, Lv/i;->g:I

    invoke-virtual {v2, v6, v13}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    iput v6, v8, Lv/i;->g:I

    goto/16 :goto_8

    :pswitch_5d
    move/from16 p2, v3

    move-object/from16 v14, v20

    const/4 v3, -0x1

    iget v13, v7, Lv/k;->h:I

    invoke-static {v2, v6, v13}, Lv/l;->f(Landroid/content/res/TypedArray;II)I

    move-result v6

    iput v6, v7, Lv/k;->h:I

    goto/16 :goto_8

    :pswitch_5e
    move/from16 p2, v3

    move-object/from16 v14, v20

    const/4 v3, -0x1

    iget v13, v8, Lv/i;->b:I

    invoke-virtual {v2, v6, v13}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    iput v6, v8, Lv/i;->b:I

    goto/16 :goto_8

    :pswitch_5f
    move/from16 p2, v3

    move-object/from16 v14, v20

    const/4 v3, -0x1

    iget-boolean v13, v9, Lv/h;->m0:Z

    invoke-virtual {v2, v6, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v9, Lv/h;->m0:Z

    goto/16 :goto_8

    :pswitch_60
    move/from16 p2, v3

    move-object/from16 v14, v20

    const/4 v3, -0x1

    iget-boolean v13, v9, Lv/h;->l0:Z

    invoke-virtual {v2, v6, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v9, Lv/h;->l0:Z

    goto/16 :goto_8

    :pswitch_61
    move/from16 p2, v3

    move-object/from16 v14, v20

    const/4 v3, -0x1

    iget v13, v8, Lv/i;->d:F

    invoke-virtual {v2, v6, v13}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v8, Lv/i;->d:F

    goto/16 :goto_8

    :pswitch_62
    move/from16 p2, v3

    move-object/from16 v14, v20

    const/4 v3, -0x1

    iget v13, v5, Lv/j;->b:I

    invoke-virtual {v2, v6, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v5, Lv/j;->b:I

    goto/16 :goto_8

    :pswitch_63
    move/from16 p2, v3

    move-object/from16 v14, v20

    const/4 v3, -0x1

    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v9, Lv/h;->k0:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_64
    move/from16 p2, v3

    move-object/from16 v14, v20

    const/4 v3, -0x1

    iget v13, v8, Lv/i;->c:I

    invoke-virtual {v2, v6, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v8, Lv/i;->c:I

    goto/16 :goto_8

    :pswitch_65
    move/from16 p2, v3

    move-object/from16 v14, v20

    const/4 v3, -0x1

    iget-boolean v13, v9, Lv/h;->n0:Z

    invoke-virtual {v2, v6, v13}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    iput-boolean v6, v9, Lv/h;->n0:Z

    goto/16 :goto_8

    :pswitch_66
    move/from16 p2, v3

    move-object/from16 v14, v20

    const/4 v3, -0x1

    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v9, Lv/h;->j0:Ljava/lang/String;

    goto/16 :goto_8

    :pswitch_67
    move/from16 p2, v3

    move-object/from16 v14, v20

    const/4 v3, -0x1

    iget v13, v9, Lv/h;->g0:I

    invoke-virtual {v2, v6, v13}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    iput v6, v9, Lv/h;->g0:I

    goto/16 :goto_8

    :pswitch_68
    move/from16 p2, v3

    move-object/from16 v14, v20

    const/4 v3, -0x1

    iget v13, v9, Lv/h;->f0:I

    invoke-virtual {v2, v6, v13}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v9, Lv/h;->f0:I

    goto/16 :goto_8

    :pswitch_69
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, -0x1

    invoke-static {v0, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    move-object/from16 v18, v0

    :goto_d
    const/4 v0, 0x1

    goto/16 :goto_b

    :pswitch_6a
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v6, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v9, Lv/h;->e0:F

    goto :goto_c

    :pswitch_6b
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v6, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    iput v6, v9, Lv/h;->d0:F

    goto :goto_c

    :pswitch_6c
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    iget v3, v5, Lv/j;->d:F

    invoke-virtual {v2, v6, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v5, Lv/j;->d:F

    goto :goto_c

    :pswitch_6d
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    iget v3, v8, Lv/i;->e:F

    invoke-virtual {v2, v6, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, v8, Lv/i;->e:F

    goto :goto_c

    :pswitch_6e
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    invoke-virtual {v2, v6, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_9

    :pswitch_6f
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    iget v3, v3, Landroid/util/TypedValue;->type:I

    move-object/from16 v18, v0

    const/4 v0, 0x3

    if-ne v3, v0, :cond_c

    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_d

    :cond_c
    const/4 v3, 0x0

    invoke-virtual {v2, v6, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    aget-object v6, v17, v6

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_a

    :pswitch_70
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v8, Lv/i;->a:I

    invoke-static {v2, v6, v0}, Lv/l;->f(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, v8, Lv/i;->a:I

    goto/16 :goto_a

    :pswitch_71
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v9, Lv/h;->B:F

    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, v9, Lv/h;->B:F

    goto/16 :goto_a

    :pswitch_72
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v9, Lv/h;->A:I

    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v9, Lv/h;->A:I

    goto/16 :goto_a

    :pswitch_73
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v9, Lv/h;->z:I

    invoke-static {v2, v6, v0}, Lv/l;->f(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, v9, Lv/h;->z:I

    goto/16 :goto_a

    :pswitch_74
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v7, Lv/k;->a:F

    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, v7, Lv/k;->a:F

    goto/16 :goto_a

    :pswitch_75
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v9, Lv/h;->c0:I

    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v9, Lv/h;->c0:I

    goto/16 :goto_a

    :pswitch_76
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v9, Lv/h;->b0:I

    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v9, Lv/h;->b0:I

    goto/16 :goto_a

    :pswitch_77
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v9, Lv/h;->a0:I

    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v9, Lv/h;->a0:I

    goto/16 :goto_a

    :pswitch_78
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v9, Lv/h;->Z:I

    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v9, Lv/h;->Z:I

    goto/16 :goto_a

    :pswitch_79
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v9, Lv/h;->Y:I

    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v9, Lv/h;->Y:I

    goto/16 :goto_a

    :pswitch_7a
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v9, Lv/h;->X:I

    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v9, Lv/h;->X:I

    goto/16 :goto_a

    :pswitch_7b
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v7, Lv/k;->k:F

    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v7, Lv/k;->k:F

    goto/16 :goto_a

    :pswitch_7c
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v7, Lv/k;->j:F

    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v7, Lv/k;->j:F

    goto/16 :goto_a

    :pswitch_7d
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v7, Lv/k;->i:F

    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v7, Lv/k;->i:F

    goto/16 :goto_a

    :pswitch_7e
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v7, Lv/k;->g:F

    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v7, Lv/k;->g:F

    goto/16 :goto_a

    :pswitch_7f
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v7, Lv/k;->f:F

    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v7, Lv/k;->f:F

    goto/16 :goto_a

    :pswitch_80
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v7, Lv/k;->e:F

    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, v7, Lv/k;->e:F

    goto/16 :goto_a

    :pswitch_81
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v7, Lv/k;->d:F

    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, v7, Lv/k;->d:F

    goto/16 :goto_a

    :pswitch_82
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v7, Lv/k;->c:F

    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, v7, Lv/k;->c:F

    goto/16 :goto_a

    :pswitch_83
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v7, Lv/k;->b:F

    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, v7, Lv/k;->b:F

    goto/16 :goto_a

    :pswitch_84
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    const/4 v0, 0x1

    iput-boolean v0, v7, Lv/k;->l:Z

    iget v0, v7, Lv/k;->m:F

    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, v7, Lv/k;->m:F

    goto/16 :goto_a

    :pswitch_85
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v5, Lv/j;->c:F

    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, v5, Lv/j;->c:F

    goto/16 :goto_a

    :pswitch_86
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v9, Lv/h;->W:I

    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v9, Lv/h;->W:I

    goto/16 :goto_a

    :pswitch_87
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v9, Lv/h;->V:I

    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v9, Lv/h;->V:I

    goto/16 :goto_a

    :pswitch_88
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v9, Lv/h;->T:F

    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, v9, Lv/h;->T:F

    goto/16 :goto_a

    :pswitch_89
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v9, Lv/h;->U:F

    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, v9, Lv/h;->U:F

    goto/16 :goto_a

    :pswitch_8a
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v1, Lv/g;->a:I

    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v1, Lv/g;->a:I

    goto/16 :goto_a

    :pswitch_8b
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v9, Lv/h;->x:F

    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, v9, Lv/h;->x:F

    goto/16 :goto_a

    :pswitch_8c
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v9, Lv/h;->l:I

    invoke-static {v2, v6, v0}, Lv/l;->f(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, v9, Lv/h;->l:I

    goto/16 :goto_a

    :pswitch_8d
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v9, Lv/h;->m:I

    invoke-static {v2, v6, v0}, Lv/l;->f(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, v9, Lv/h;->m:I

    goto/16 :goto_a

    :pswitch_8e
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v9, Lv/h;->H:I

    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v9, Lv/h;->H:I

    goto/16 :goto_a

    :pswitch_8f
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v9, Lv/h;->t:I

    invoke-static {v2, v6, v0}, Lv/l;->f(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, v9, Lv/h;->t:I

    goto/16 :goto_a

    :pswitch_90
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v9, Lv/h;->s:I

    invoke-static {v2, v6, v0}, Lv/l;->f(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, v9, Lv/h;->s:I

    goto/16 :goto_a

    :pswitch_91
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v9, Lv/h;->K:I

    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v9, Lv/h;->K:I

    goto/16 :goto_a

    :pswitch_92
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v9, Lv/h;->k:I

    invoke-static {v2, v6, v0}, Lv/l;->f(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, v9, Lv/h;->k:I

    goto/16 :goto_a

    :pswitch_93
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v9, Lv/h;->j:I

    invoke-static {v2, v6, v0}, Lv/l;->f(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, v9, Lv/h;->j:I

    goto/16 :goto_a

    :pswitch_94
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v9, Lv/h;->G:I

    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v9, Lv/h;->G:I

    goto/16 :goto_a

    :pswitch_95
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v9, Lv/h;->E:I

    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v9, Lv/h;->E:I

    goto/16 :goto_a

    :pswitch_96
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v9, Lv/h;->i:I

    invoke-static {v2, v6, v0}, Lv/l;->f(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, v9, Lv/h;->i:I

    goto/16 :goto_a

    :pswitch_97
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v9, Lv/h;->h:I

    invoke-static {v2, v6, v0}, Lv/l;->f(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, v9, Lv/h;->h:I

    goto/16 :goto_a

    :pswitch_98
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v9, Lv/h;->F:I

    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v9, Lv/h;->F:I

    goto/16 :goto_a

    :pswitch_99
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v9, Lv/h;->b:I

    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, v9, Lv/h;->b:I

    goto/16 :goto_a

    :pswitch_9a
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v5, Lv/j;->a:I

    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, v5, Lv/j;->a:I

    aget v0, v16, v0

    iput v0, v5, Lv/j;->a:I

    goto/16 :goto_a

    :pswitch_9b
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v9, Lv/h;->c:I

    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, v9, Lv/h;->c:I

    goto/16 :goto_a

    :pswitch_9c
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v9, Lv/h;->w:F

    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, v9, Lv/h;->w:F

    goto/16 :goto_a

    :pswitch_9d
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v9, Lv/h;->f:F

    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, v9, Lv/h;->f:F

    goto/16 :goto_a

    :pswitch_9e
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v9, Lv/h;->e:I

    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, v9, Lv/h;->e:I

    goto/16 :goto_a

    :pswitch_9f
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v9, Lv/h;->d:I

    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, v9, Lv/h;->d:I

    goto/16 :goto_a

    :pswitch_a0
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v9, Lv/h;->N:I

    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v9, Lv/h;->N:I

    goto/16 :goto_a

    :pswitch_a1
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v9, Lv/h;->R:I

    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v9, Lv/h;->R:I

    goto/16 :goto_a

    :pswitch_a2
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v9, Lv/h;->O:I

    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v9, Lv/h;->O:I

    goto/16 :goto_a

    :pswitch_a3
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v9, Lv/h;->M:I

    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v9, Lv/h;->M:I

    goto/16 :goto_a

    :pswitch_a4
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v9, Lv/h;->Q:I

    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v9, Lv/h;->Q:I

    goto/16 :goto_a

    :pswitch_a5
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v9, Lv/h;->P:I

    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v9, Lv/h;->P:I

    goto/16 :goto_a

    :pswitch_a6
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v9, Lv/h;->u:I

    invoke-static {v2, v6, v0}, Lv/l;->f(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, v9, Lv/h;->u:I

    goto/16 :goto_a

    :pswitch_a7
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v9, Lv/h;->v:I

    invoke-static {v2, v6, v0}, Lv/l;->f(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, v9, Lv/h;->v:I

    goto/16 :goto_a

    :pswitch_a8
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v9, Lv/h;->J:I

    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v9, Lv/h;->J:I

    goto/16 :goto_a

    :pswitch_a9
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v9, Lv/h;->D:I

    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, v9, Lv/h;->D:I

    goto/16 :goto_a

    :pswitch_aa
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v9, Lv/h;->C:I

    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, v9, Lv/h;->C:I

    goto/16 :goto_a

    :pswitch_ab
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    invoke-virtual {v2, v6}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v9, Lv/h;->y:Ljava/lang/String;

    goto/16 :goto_a

    :pswitch_ac
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v9, Lv/h;->n:I

    invoke-static {v2, v6, v0}, Lv/l;->f(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, v9, Lv/h;->n:I

    goto/16 :goto_a

    :pswitch_ad
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v9, Lv/h;->o:I

    invoke-static {v2, v6, v0}, Lv/l;->f(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, v9, Lv/h;->o:I

    goto/16 :goto_a

    :pswitch_ae
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v9, Lv/h;->I:I

    invoke-virtual {v2, v6, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    iput v0, v9, Lv/h;->I:I

    goto/16 :goto_a

    :pswitch_af
    move/from16 p2, v3

    move-object/from16 v13, v18

    move-object/from16 v14, v20

    const/4 v3, 0x0

    move-object/from16 v18, v0

    iget v0, v9, Lv/h;->p:I

    invoke-static {v2, v6, v0}, Lv/l;->f(Landroid/content/res/TypedArray;II)I

    move-result v0

    iput v0, v9, Lv/h;->p:I

    goto/16 :goto_a

    :goto_e
    add-int/2addr v10, v0

    move/from16 v3, p2

    move-object/from16 v20, v14

    move-object/from16 v0, v18

    move-object/from16 v18, v13

    goto/16 :goto_7

    :cond_d
    iget-object v0, v9, Lv/h;->j0:Ljava/lang/String;

    if-eqz v0, :cond_e

    const/4 v0, 0x0

    iput-object v0, v9, Lv/h;->i0:[I

    :cond_e
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_50
        :pswitch_0
        :pswitch_0
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_0
        :pswitch_0
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_0
        :pswitch_0
        :pswitch_3d
        :pswitch_3c
        :pswitch_0
        :pswitch_0
        :pswitch_3b
        :pswitch_0
        :pswitch_0
        :pswitch_3a
        :pswitch_0
        :pswitch_0
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_af
        :pswitch_ae
        :pswitch_ad
        :pswitch_ac
        :pswitch_ab
        :pswitch_aa
        :pswitch_a9
        :pswitch_a8
        :pswitch_a7
        :pswitch_a6
        :pswitch_a5
        :pswitch_a4
        :pswitch_a3
        :pswitch_a2
        :pswitch_a1
        :pswitch_a0
        :pswitch_9f
        :pswitch_9e
        :pswitch_9d
        :pswitch_9c
        :pswitch_9b
        :pswitch_9a
        :pswitch_99
        :pswitch_98
        :pswitch_97
        :pswitch_96
        :pswitch_95
        :pswitch_94
        :pswitch_93
        :pswitch_92
        :pswitch_91
        :pswitch_90
        :pswitch_8f
        :pswitch_8e
        :pswitch_8d
        :pswitch_8c
        :pswitch_8b
        :pswitch_8a
        :pswitch_89
        :pswitch_88
        :pswitch_87
        :pswitch_86
        :pswitch_85
        :pswitch_84
        :pswitch_83
        :pswitch_82
        :pswitch_81
        :pswitch_80
        :pswitch_7f
        :pswitch_7e
        :pswitch_7d
        :pswitch_7c
        :pswitch_7b
        :pswitch_7a
        :pswitch_79
        :pswitch_78
        :pswitch_77
        :pswitch_76
        :pswitch_75
        :pswitch_74
        :pswitch_73
        :pswitch_72
        :pswitch_71
        :pswitch_70
        :pswitch_6f
        :pswitch_6e
        :pswitch_6d
        :pswitch_6c
        :pswitch_6b
        :pswitch_6a
        :pswitch_69
        :pswitch_68
        :pswitch_67
        :pswitch_66
        :pswitch_65
        :pswitch_64
        :pswitch_63
        :pswitch_62
        :pswitch_61
        :pswitch_60
        :pswitch_5f
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_51
        :pswitch_51
        :pswitch_51
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
    .end packed-switch
.end method

.method public static f(Landroid/content/res/TypedArray;II)I
    .locals 1

    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    :cond_0
    return p2
.end method

.method public static g(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V
    .locals 7

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    iget v0, v0, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x3

    const/16 v2, 0x17

    const/16 v3, 0x15

    const/4 v4, 0x1

    const/4 v5, 0x5

    const/4 v6, 0x0

    if-eq v0, v1, :cond_b

    if-eq v0, v5, :cond_4

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    const/4 p2, -0x4

    const/4 v0, -0x2

    if-eq p1, p2, :cond_3

    const/4 p2, -0x3

    if-eq p1, p2, :cond_1

    if-eq p1, v0, :cond_2

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    :cond_1
    move v4, v6

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v6

    move v6, p1

    goto :goto_1

    :cond_3
    move v6, v0

    goto :goto_1

    :cond_4
    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    goto :goto_0

    :goto_1
    instance-of p1, p0, Lv/c;

    if-eqz p1, :cond_6

    check-cast p0, Lv/c;

    if-nez p3, :cond_5

    iput v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput-boolean v4, p0, Lv/c;->W:Z

    goto :goto_2

    :cond_5
    iput v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput-boolean v4, p0, Lv/c;->X:Z

    goto :goto_2

    :cond_6
    instance-of p1, p0, Lv/h;

    if-eqz p1, :cond_8

    check-cast p0, Lv/h;

    if-nez p3, :cond_7

    iput v6, p0, Lv/h;->b:I

    iput-boolean v4, p0, Lv/h;->l0:Z

    goto :goto_2

    :cond_7
    iput v6, p0, Lv/h;->c:I

    iput-boolean v4, p0, Lv/h;->m0:Z

    goto :goto_2

    :cond_8
    instance-of p1, p0, Lv/f;

    if-eqz p1, :cond_a

    check-cast p0, Lv/f;

    if-nez p3, :cond_9

    invoke-virtual {p0, v2, v6}, Lv/f;->b(II)V

    const/16 p1, 0x50

    invoke-virtual {p0, p1, v4}, Lv/f;->d(IZ)V

    goto :goto_2

    :cond_9
    invoke-virtual {p0, v3, v6}, Lv/f;->b(II)V

    const/16 p1, 0x51

    invoke-virtual {p0, p1, v4}, Lv/f;->d(IZ)V

    :cond_a
    :goto_2
    return-void

    :cond_b
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_c

    goto/16 :goto_4

    :cond_c
    const/16 p2, 0x3d

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez p2, :cond_1c

    sub-int/2addr v0, v4

    if-ge p2, v0, :cond_1c

    invoke-virtual {p1, v6, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/2addr p2, v4

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_1c

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ratio"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    instance-of p2, p0, Lv/c;

    if-eqz p2, :cond_e

    check-cast p0, Lv/c;

    if-nez p3, :cond_d

    iput v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    goto :goto_3

    :cond_d
    iput v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :goto_3
    invoke-static {p0, p1}, Lv/l;->h(Lv/c;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_e
    instance-of p2, p0, Lv/h;

    if-eqz p2, :cond_f

    check-cast p0, Lv/h;

    iput-object p1, p0, Lv/h;->y:Ljava/lang/String;

    goto/16 :goto_4

    :cond_f
    instance-of p2, p0, Lv/f;

    if-eqz p2, :cond_1c

    check-cast p0, Lv/f;

    invoke-virtual {p0, v5, p1}, Lv/f;->c(ILjava/lang/String;)V

    goto/16 :goto_4

    :cond_10
    const-string v0, "weight"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    instance-of p2, p0, Lv/c;

    if-eqz p2, :cond_12

    check-cast p0, Lv/c;

    if-nez p3, :cond_11

    iput v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput p1, p0, Lv/c;->H:F

    goto/16 :goto_4

    :cond_11
    iput v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput p1, p0, Lv/c;->I:F

    goto/16 :goto_4

    :cond_12
    instance-of p2, p0, Lv/h;

    if-eqz p2, :cond_14

    check-cast p0, Lv/h;

    if-nez p3, :cond_13

    iput v6, p0, Lv/h;->b:I

    iput p1, p0, Lv/h;->U:F

    goto/16 :goto_4

    :cond_13
    iput v6, p0, Lv/h;->c:I

    iput p1, p0, Lv/h;->T:F

    goto/16 :goto_4

    :cond_14
    instance-of p2, p0, Lv/f;

    if-eqz p2, :cond_1c

    check-cast p0, Lv/f;

    if-nez p3, :cond_15

    invoke-virtual {p0, v2, v6}, Lv/f;->b(II)V

    const/16 p2, 0x27

    invoke-virtual {p0, p1, p2}, Lv/f;->a(FI)V

    goto :goto_4

    :cond_15
    invoke-virtual {p0, v3, v6}, Lv/f;->b(II)V

    const/16 p2, 0x28

    invoke-virtual {p0, p1, p2}, Lv/f;->a(FI)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :cond_16
    const-string v0, "parent"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1c

    :try_start_1
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 p2, 0x0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    instance-of p2, p0, Lv/c;

    const/4 v0, 0x2

    if-eqz p2, :cond_18

    check-cast p0, Lv/c;

    if-nez p3, :cond_17

    iput v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput p1, p0, Lv/c;->R:F

    iput v0, p0, Lv/c;->L:I

    goto :goto_4

    :cond_17
    iput v6, p0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput p1, p0, Lv/c;->S:F

    iput v0, p0, Lv/c;->M:I

    goto :goto_4

    :cond_18
    instance-of p2, p0, Lv/h;

    if-eqz p2, :cond_1a

    check-cast p0, Lv/h;

    if-nez p3, :cond_19

    iput v6, p0, Lv/h;->b:I

    iput p1, p0, Lv/h;->d0:F

    iput v0, p0, Lv/h;->X:I

    goto :goto_4

    :cond_19
    iput v6, p0, Lv/h;->c:I

    iput p1, p0, Lv/h;->e0:F

    iput v0, p0, Lv/h;->Y:I

    goto :goto_4

    :cond_1a
    instance-of p1, p0, Lv/f;

    if-eqz p1, :cond_1c

    check-cast p0, Lv/f;

    if-nez p3, :cond_1b

    invoke-virtual {p0, v2, v6}, Lv/f;->b(II)V

    const/16 p1, 0x36

    invoke-virtual {p0, p1, v0}, Lv/f;->b(II)V

    goto :goto_4

    :cond_1b
    invoke-virtual {p0, v3, v6}, Lv/f;->b(II)V

    const/16 p1, 0x37

    invoke-virtual {p0, p1, v0}, Lv/f;->b(II)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1c
    :goto_4
    return-void
.end method

.method public static h(Lv/c;Ljava/lang/String;)V
    .locals 7

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2c

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-lez v1, :cond_2

    add-int/lit8 v5, v0, -0x1

    if-ge v1, v5, :cond_2

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "W"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "H"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    add-int/2addr v1, v3

    move v4, v2

    move v2, v1

    :cond_2
    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_4

    sub-int/2addr v0, v3

    if-ge v1, v0, :cond_4

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/2addr v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v5, v0, v2

    if-lez v5, :cond_5

    cmpl-float v2, v1, v2

    if-lez v2, :cond_5

    if-ne v4, v3, :cond_3

    div-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    goto :goto_1

    :cond_3
    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_5

    :try_start_1
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_5
    :goto_1
    iput-object p1, p0, Lv/c;->G:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    new-instance v4, Ljava/util/HashSet;

    iget-object v5, v1, Lv/l;->c:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v7, 0x0

    :goto_0
    const/4 v0, 0x1

    if-ge v7, v3, :cond_f

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    const-string v11, "ConstraintSet"

    if-nez v10, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, "id unknown "

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    invoke-virtual {v9, v8}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v8, "UNKNOWN"

    :goto_1
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    move/from16 v18, v3

    goto/16 :goto_e

    :cond_0
    iget-boolean v10, v1, Lv/l;->b:Z

    const/4 v12, -0x1

    if-eqz v10, :cond_2

    if-eq v9, v12, :cond_1

    goto :goto_3

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_3
    if-ne v9, v12, :cond_3

    :goto_4
    goto :goto_2

    :cond_3
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lv/g;

    if-nez v10, :cond_4

    goto :goto_4

    :cond_4
    instance-of v11, v8, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v11, :cond_6

    iget-object v11, v10, Lv/g;->d:Lv/h;

    iput v0, v11, Lv/h;->h0:I

    move-object v0, v8

    check-cast v0, Landroidx/constraintlayout/widget/Barrier;

    invoke-virtual {v0, v9}, Landroid/view/View;->setId(I)V

    iget v9, v11, Lv/h;->f0:I

    iput v9, v0, Landroidx/constraintlayout/widget/Barrier;->k:I

    iget v9, v11, Lv/h;->g0:I

    iget-object v13, v0, Landroidx/constraintlayout/widget/Barrier;->m:Ls/a;

    iput v9, v13, Ls/a;->s0:I

    iget-boolean v9, v11, Lv/h;->n0:Z

    iput-boolean v9, v13, Ls/a;->r0:Z

    iget-object v9, v11, Lv/h;->i0:[I

    if-eqz v9, :cond_5

    invoke-virtual {v0, v9}, Landroidx/constraintlayout/widget/Barrier;->h([I)V

    goto :goto_5

    :cond_5
    iget-object v9, v11, Lv/h;->j0:Ljava/lang/String;

    if-eqz v9, :cond_6

    invoke-static {v0, v9}, Lv/l;->c(Landroidx/constraintlayout/widget/Barrier;Ljava/lang/String;)[I

    move-result-object v9

    iput-object v9, v11, Lv/h;->i0:[I

    invoke-virtual {v0, v9}, Landroidx/constraintlayout/widget/Barrier;->h([I)V

    :cond_6
    :goto_5
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lv/c;

    invoke-virtual {v9}, Lv/c;->a()V

    invoke-virtual {v10, v9}, Lv/g;->a(Lv/c;)V

    iget-object v11, v10, Lv/g;->f:Ljava/util/HashMap;

    const-string v13, "\" not found on "

    const-string v14, " Custom Attribute \""

    const-string v15, "TransitionLayout"

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv/a;

    iget-boolean v1, v0, Lv/a;->a:Z

    if-nez v1, :cond_7

    const-string v1, "set"

    invoke-static {v1, v12}, Li4/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v17, v11

    goto :goto_7

    :cond_7
    move-object/from16 v17, v11

    move-object v1, v12

    :goto_7
    :try_start_1
    iget v11, v0, Lv/a;->b:I

    invoke-static {v11}, Lq/e;->c(I)I

    move-result v11

    packed-switch v11, :pswitch_data_0

    :goto_8
    move/from16 v18, v3

    goto/16 :goto_c

    :pswitch_0
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v11}, [Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v6, v1, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    iget v0, v0, Lv/a;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v11, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :catch_1
    move-exception v0

    move/from16 v18, v3

    goto/16 :goto_9

    :catch_2
    move-exception v0

    move/from16 v18, v3

    goto/16 :goto_a

    :catch_3
    move-exception v0

    move/from16 v18, v3

    goto/16 :goto_b

    :pswitch_1
    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v11}, [Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v6, v1, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    iget v0, v0, Lv/a;->d:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v11, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :pswitch_2
    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    filled-new-array {v11}, [Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v6, v1, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    iget-boolean v0, v0, Lv/a;->f:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v11, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :pswitch_3
    const-class v11, Ljava/lang/CharSequence;

    filled-new-array {v11}, [Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v6, v1, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    iget-object v0, v0, Lv/a;->e:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v11, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    :pswitch_4
    const-class v11, Landroid/graphics/drawable/Drawable;

    filled-new-array {v11}, [Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v6, v1, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v18, v3

    :try_start_2
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iget v0, v0, Lv/a;->g:I

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v11, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    :catch_4
    move-exception v0

    goto :goto_9

    :catch_5
    move-exception v0

    goto :goto_a

    :catch_6
    move-exception v0

    goto/16 :goto_b

    :pswitch_5
    move/from16 v18, v3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v6, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iget v0, v0, Lv/a;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    :pswitch_6
    move/from16 v18, v3

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v6, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iget v0, v0, Lv/a;->d:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_c

    :pswitch_7
    move/from16 v18, v3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v6, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    iget v0, v0, Lv/a;->c:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v8, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_c

    :goto_9
    invoke-static {v14, v12, v13}, LB/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_c

    :goto_a
    invoke-static {v14, v12, v13}, LB/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_c

    :goto_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " must have a method "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_c
    move-object/from16 v1, p0

    move-object/from16 v11, v17

    move/from16 v3, v18

    const/4 v12, -0x1

    goto/16 :goto_6

    :cond_8
    move/from16 v18, v3

    invoke-virtual {v8, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v10, Lv/g;->b:Lv/j;

    iget v1, v0, Lv/j;->b:I

    if-nez v1, :cond_9

    iget v1, v0, Lv/j;->a:I

    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget v0, v0, Lv/j;->c:F

    invoke-virtual {v8, v0}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, v10, Lv/g;->e:Lv/k;

    iget v1, v0, Lv/k;->a:F

    invoke-virtual {v8, v1}, Landroid/view/View;->setRotation(F)V

    iget v1, v0, Lv/k;->b:F

    invoke-virtual {v8, v1}, Landroid/view/View;->setRotationX(F)V

    iget v1, v0, Lv/k;->c:F

    invoke-virtual {v8, v1}, Landroid/view/View;->setRotationY(F)V

    iget v1, v0, Lv/k;->d:F

    invoke-virtual {v8, v1}, Landroid/view/View;->setScaleX(F)V

    iget v1, v0, Lv/k;->e:F

    invoke-virtual {v8, v1}, Landroid/view/View;->setScaleY(F)V

    iget v1, v0, Lv/k;->h:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_a

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    iget v3, v0, Lv/k;->h:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v6

    add-int/2addr v6, v3

    int-to-float v3, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v3, v6

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v9

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v1, v9

    int-to-float v1, v1

    div-float/2addr v1, v6

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int/2addr v6, v9

    if-lez v6, :cond_c

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int/2addr v6, v9

    if-lez v6, :cond_c

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v1, v6

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v3, v6

    invoke-virtual {v8, v1}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {v8, v3}, Landroid/view/View;->setPivotY(F)V

    goto :goto_d

    :cond_a
    iget v1, v0, Lv/k;->f:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_b

    iget v1, v0, Lv/k;->f:F

    invoke-virtual {v8, v1}, Landroid/view/View;->setPivotX(F)V

    :cond_b
    iget v1, v0, Lv/k;->g:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_c

    iget v1, v0, Lv/k;->g:F

    invoke-virtual {v8, v1}, Landroid/view/View;->setPivotY(F)V

    :cond_c
    :goto_d
    iget v1, v0, Lv/k;->i:F

    invoke-virtual {v8, v1}, Landroid/view/View;->setTranslationX(F)V

    iget v1, v0, Lv/k;->j:F

    invoke-virtual {v8, v1}, Landroid/view/View;->setTranslationY(F)V

    iget v1, v0, Lv/k;->k:F

    invoke-virtual {v8, v1}, Landroid/view/View;->setTranslationZ(F)V

    iget-boolean v1, v0, Lv/k;->l:Z

    if-eqz v1, :cond_e

    iget v0, v0, Lv/k;->m:F

    invoke-virtual {v8, v0}, Landroid/view/View;->setElevation(F)V

    goto :goto_e

    :cond_d
    move/from16 v18, v3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WARNING NO CONSTRAINTS for view "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_e
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p0

    move/from16 v3, v18

    goto/16 :goto_0

    :cond_f
    move/from16 v18, v3

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv/g;

    if-nez v4, :cond_11

    goto :goto_f

    :cond_11
    iget-object v6, v4, Lv/g;->d:Lv/h;

    iget v7, v6, Lv/h;->h0:I

    if-ne v7, v0, :cond_14

    new-instance v7, Landroidx/constraintlayout/widget/Barrier;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroidx/constraintlayout/widget/Barrier;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setId(I)V

    iget-object v8, v6, Lv/h;->i0:[I

    if-eqz v8, :cond_12

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/widget/Barrier;->h([I)V

    goto :goto_10

    :cond_12
    iget-object v8, v6, Lv/h;->j0:Ljava/lang/String;

    if-eqz v8, :cond_13

    invoke-static {v7, v8}, Lv/l;->c(Landroidx/constraintlayout/widget/Barrier;Ljava/lang/String;)[I

    move-result-object v8

    iput-object v8, v6, Lv/h;->i0:[I

    invoke-virtual {v7, v8}, Landroidx/constraintlayout/widget/Barrier;->h([I)V

    :cond_13
    :goto_10
    iget v8, v6, Lv/h;->f0:I

    iput v8, v7, Landroidx/constraintlayout/widget/Barrier;->k:I

    iget v8, v6, Lv/h;->g0:I

    iget-object v9, v7, Landroidx/constraintlayout/widget/Barrier;->m:Ls/a;

    iput v8, v9, Ls/a;->s0:I

    invoke-static {}, Landroidx/constraintlayout/widget/ConstraintLayout;->g()Lv/c;

    move-result-object v8

    invoke-virtual {v7}, Landroidx/constraintlayout/widget/Barrier;->i()V

    invoke-virtual {v4, v8}, Lv/g;->a(Lv/c;)V

    invoke-virtual {v2, v7, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_14
    iget-boolean v6, v6, Lv/h;->a:Z

    if-eqz v6, :cond_10

    new-instance v6, Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroidx/constraintlayout/widget/Guideline;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v6, v3}, Landroid/view/View;->setId(I)V

    invoke-static {}, Landroidx/constraintlayout/widget/ConstraintLayout;->g()Lv/c;

    move-result-object v3

    invoke-virtual {v4, v3}, Lv/g;->a(Lv/c;)V

    invoke-virtual {v2, v6, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_f

    :cond_15
    move/from16 v1, v18

    const/4 v6, 0x0

    :goto_11
    if-ge v6, v1, :cond_17

    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v3, :cond_16

    check-cast v0, Landroidx/constraintlayout/widget/Barrier;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_16
    add-int/lit8 v6, v6, 0x1

    goto :goto_11

    :cond_17
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public final b(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 16

    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    iget-object v3, v1, Lv/l;->c:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    move v4, v0

    :goto_0
    if-ge v4, v2, :cond_a

    move-object/from16 v5, p1

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lv/c;

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v8

    iget-boolean v0, v1, Lv/l;->b:Z

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    if-eq v8, v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_1
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v9, Lv/g;

    invoke-direct {v9}, Lv/g;-><init>()V

    invoke-virtual {v3, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lv/g;

    if-nez v9, :cond_3

    goto/16 :goto_7

    :cond_3
    iget-object v10, v1, Lv/l;->a:Ljava/util/HashMap;

    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v10}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lv/a;

    :try_start_0
    const-string v15, "BackgroundColor"

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-virtual {v6}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    check-cast v15, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v15}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    new-instance v1, Lv/a;

    invoke-direct {v1, v14, v15}, Lv/a;-><init>(Lv/a;Ljava/lang/Object;)V

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_5

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getMap"

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v15, 0x0

    invoke-virtual {v12, v1, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v6, v15}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    new-instance v15, Lv/a;

    invoke-direct {v15, v14, v1}, Lv/a;-><init>(Lv/a;Ljava/lang/Object;)V

    invoke-virtual {v11, v0, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_6
    move-object/from16 v1, p0

    goto :goto_2

    :cond_5
    iput-object v11, v9, Lv/g;->f:Ljava/util/HashMap;

    iput v8, v9, Lv/g;->a:I

    iget v0, v7, Lv/c;->e:I

    iget-object v1, v9, Lv/g;->d:Lv/h;

    iput v0, v1, Lv/h;->h:I

    iget v0, v7, Lv/c;->f:I

    iput v0, v1, Lv/h;->i:I

    iget v0, v7, Lv/c;->g:I

    iput v0, v1, Lv/h;->j:I

    iget v0, v7, Lv/c;->h:I

    iput v0, v1, Lv/h;->k:I

    iget v0, v7, Lv/c;->i:I

    iput v0, v1, Lv/h;->l:I

    iget v0, v7, Lv/c;->j:I

    iput v0, v1, Lv/h;->m:I

    iget v0, v7, Lv/c;->k:I

    iput v0, v1, Lv/h;->n:I

    iget v0, v7, Lv/c;->l:I

    iput v0, v1, Lv/h;->o:I

    iget v0, v7, Lv/c;->m:I

    iput v0, v1, Lv/h;->p:I

    iget v0, v7, Lv/c;->n:I

    iput v0, v1, Lv/h;->q:I

    iget v0, v7, Lv/c;->o:I

    iput v0, v1, Lv/h;->r:I

    iget v0, v7, Lv/c;->s:I

    iput v0, v1, Lv/h;->s:I

    iget v0, v7, Lv/c;->t:I

    iput v0, v1, Lv/h;->t:I

    iget v0, v7, Lv/c;->u:I

    iput v0, v1, Lv/h;->u:I

    iget v0, v7, Lv/c;->v:I

    iput v0, v1, Lv/h;->v:I

    iget v0, v7, Lv/c;->E:F

    iput v0, v1, Lv/h;->w:F

    iget v0, v7, Lv/c;->F:F

    iput v0, v1, Lv/h;->x:F

    iget-object v0, v7, Lv/c;->G:Ljava/lang/String;

    iput-object v0, v1, Lv/h;->y:Ljava/lang/String;

    iget v0, v7, Lv/c;->p:I

    iput v0, v1, Lv/h;->z:I

    iget v0, v7, Lv/c;->q:I

    iput v0, v1, Lv/h;->A:I

    iget v0, v7, Lv/c;->r:F

    iput v0, v1, Lv/h;->B:F

    iget v0, v7, Lv/c;->T:I

    iput v0, v1, Lv/h;->C:I

    iget v0, v7, Lv/c;->U:I

    iput v0, v1, Lv/h;->D:I

    iget v0, v7, Lv/c;->V:I

    iput v0, v1, Lv/h;->E:I

    iget v0, v7, Lv/c;->c:F

    iput v0, v1, Lv/h;->f:F

    iget v0, v7, Lv/c;->a:I

    iput v0, v1, Lv/h;->d:I

    iget v0, v7, Lv/c;->b:I

    iput v0, v1, Lv/h;->e:I

    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v0, v1, Lv/h;->b:I

    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v0, v1, Lv/h;->c:I

    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v0, v1, Lv/h;->F:I

    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iput v0, v1, Lv/h;->G:I

    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v0, v1, Lv/h;->H:I

    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iput v0, v1, Lv/h;->I:I

    iget v0, v7, Lv/c;->D:I

    iput v0, v1, Lv/h;->L:I

    iget v0, v7, Lv/c;->I:F

    iput v0, v1, Lv/h;->T:F

    iget v0, v7, Lv/c;->H:F

    iput v0, v1, Lv/h;->U:F

    iget v0, v7, Lv/c;->K:I

    iput v0, v1, Lv/h;->W:I

    iget v0, v7, Lv/c;->J:I

    iput v0, v1, Lv/h;->V:I

    iget-boolean v0, v7, Lv/c;->W:Z

    iput-boolean v0, v1, Lv/h;->l0:Z

    iget-boolean v0, v7, Lv/c;->X:Z

    iput-boolean v0, v1, Lv/h;->m0:Z

    iget v0, v7, Lv/c;->L:I

    iput v0, v1, Lv/h;->X:I

    iget v0, v7, Lv/c;->M:I

    iput v0, v1, Lv/h;->Y:I

    iget v0, v7, Lv/c;->P:I

    iput v0, v1, Lv/h;->Z:I

    iget v0, v7, Lv/c;->Q:I

    iput v0, v1, Lv/h;->a0:I

    iget v0, v7, Lv/c;->N:I

    iput v0, v1, Lv/h;->b0:I

    iget v0, v7, Lv/c;->O:I

    iput v0, v1, Lv/h;->c0:I

    iget v0, v7, Lv/c;->R:F

    iput v0, v1, Lv/h;->d0:F

    iget v0, v7, Lv/c;->S:F

    iput v0, v1, Lv/h;->e0:F

    iget-object v0, v7, Lv/c;->Y:Ljava/lang/String;

    iput-object v0, v1, Lv/h;->k0:Ljava/lang/String;

    iget v0, v7, Lv/c;->x:I

    iput v0, v1, Lv/h;->N:I

    iget v0, v7, Lv/c;->z:I

    iput v0, v1, Lv/h;->P:I

    iget v0, v7, Lv/c;->w:I

    iput v0, v1, Lv/h;->M:I

    iget v0, v7, Lv/c;->y:I

    iput v0, v1, Lv/h;->O:I

    iget v0, v7, Lv/c;->A:I

    iput v0, v1, Lv/h;->R:I

    iget v0, v7, Lv/c;->B:I

    iput v0, v1, Lv/h;->Q:I

    iget v0, v7, Lv/c;->C:I

    iput v0, v1, Lv/h;->S:I

    iget v0, v7, Lv/c;->Z:I

    iput v0, v1, Lv/h;->o0:I

    invoke-virtual {v7}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v0

    iput v0, v1, Lv/h;->J:I

    invoke-virtual {v7}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v0

    iput v0, v1, Lv/h;->K:I

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v0

    iget-object v7, v9, Lv/g;->b:Lv/j;

    iput v0, v7, Lv/j;->a:I

    invoke-virtual {v6}, Landroid/view/View;->getAlpha()F

    move-result v0

    iput v0, v7, Lv/j;->c:F

    invoke-virtual {v6}, Landroid/view/View;->getRotation()F

    move-result v0

    iget-object v7, v9, Lv/g;->e:Lv/k;

    iput v0, v7, Lv/k;->a:F

    invoke-virtual {v6}, Landroid/view/View;->getRotationX()F

    move-result v0

    iput v0, v7, Lv/k;->b:F

    invoke-virtual {v6}, Landroid/view/View;->getRotationY()F

    move-result v0

    iput v0, v7, Lv/k;->c:F

    invoke-virtual {v6}, Landroid/view/View;->getScaleX()F

    move-result v0

    iput v0, v7, Lv/k;->d:F

    invoke-virtual {v6}, Landroid/view/View;->getScaleY()F

    move-result v0

    iput v0, v7, Lv/k;->e:F

    invoke-virtual {v6}, Landroid/view/View;->getPivotX()F

    move-result v0

    invoke-virtual {v6}, Landroid/view/View;->getPivotY()F

    move-result v8

    float-to-double v9, v0

    const-wide/16 v11, 0x0

    cmpl-double v9, v9, v11

    if-nez v9, :cond_6

    float-to-double v9, v8

    cmpl-double v9, v9, v11

    if-eqz v9, :cond_7

    :cond_6
    iput v0, v7, Lv/k;->f:F

    iput v8, v7, Lv/k;->g:F

    :cond_7
    invoke-virtual {v6}, Landroid/view/View;->getTranslationX()F

    move-result v0

    iput v0, v7, Lv/k;->i:F

    invoke-virtual {v6}, Landroid/view/View;->getTranslationY()F

    move-result v0

    iput v0, v7, Lv/k;->j:F

    invoke-virtual {v6}, Landroid/view/View;->getTranslationZ()F

    move-result v0

    iput v0, v7, Lv/k;->k:F

    iget-boolean v0, v7, Lv/k;->l:Z

    if-eqz v0, :cond_8

    invoke-virtual {v6}, Landroid/view/View;->getElevation()F

    move-result v0

    iput v0, v7, Lv/k;->m:F

    :cond_8
    instance-of v0, v6, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v0, :cond_9

    check-cast v6, Landroidx/constraintlayout/widget/Barrier;

    iget-object v0, v6, Landroidx/constraintlayout/widget/Barrier;->m:Ls/a;

    iget-boolean v0, v0, Ls/a;->r0:Z

    iput-boolean v0, v1, Lv/h;->n0:Z

    iget-object v0, v6, Landroidx/constraintlayout/widget/Barrier;->d:[I

    iget v7, v6, Landroidx/constraintlayout/widget/Barrier;->e:I

    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, v1, Lv/h;->i0:[I

    iget v0, v6, Landroidx/constraintlayout/widget/Barrier;->k:I

    iput v0, v1, Lv/h;->f0:I

    iget-object v0, v6, Landroidx/constraintlayout/widget/Barrier;->m:Ls/a;

    iget v0, v0, Ls/a;->s0:I

    iput v0, v1, Lv/h;->g0:I

    :cond_9
    :goto_7
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v1, p0

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public final e(Landroid/content/Context;I)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lv/l;->d(Landroid/content/Context;Landroid/util/AttributeSet;Z)Lv/g;

    move-result-object v2

    const-string v3, "Guideline"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v2, Lv/g;->d:Lv/h;

    iput-boolean v1, v0, Lv/h;->a:Z

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_4

    :cond_1
    :goto_1
    iget-object v0, p0, Lv/l;->c:Ljava/util/HashMap;

    iget v1, v2, Lv/g;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    :goto_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5

    :goto_4
    invoke-virtual {p0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_3
    :goto_5
    return-void
.end method
