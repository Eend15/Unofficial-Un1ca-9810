package com.android.systemui.statusbar.phone.ongoingactivity;

import android.content.ComponentName;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/** Stand-in for Samsung's raw store, including foreground-hidden and Now-Bar-only activities. */
public final class OngoingActivityDataHelper {
    public static final List<Object> mOngoingActivityLists = new ArrayList<>();
    public static final List<Object> hiddenOngoingActivityDataList = new ArrayList<>();
    public static final Map<String, Object> onlyShownNowbarItemMap = new HashMap<>();
    public static final List<ComponentName> pipEnabledComponentNameList = new ArrayList<>();
    public static ComponentName baseActivityComponentName;
}
