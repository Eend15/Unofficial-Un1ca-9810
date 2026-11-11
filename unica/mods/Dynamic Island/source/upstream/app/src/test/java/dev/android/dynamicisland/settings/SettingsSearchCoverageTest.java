package dev.android.dynamicisland.settings;

import static org.junit.Assert.assertNotNull;
import static org.junit.Assert.assertTrue;

import android.view.View;
import java.util.ArrayList;
import java.util.List;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.robolectric.Robolectric;
import org.robolectric.RobolectricTestRunner;
import org.robolectric.annotation.Config;

/** Every searchable setting must really be on the page its search result opens (or on its parent row). */
@RunWith(RobolectricTestRunner.class)
@Config(sdk = 35, qualifiers = "ko-rKR-w360dp-h800dp-night-xxhdpi")
public class SettingsSearchCoverageTest {
    @Test public void everySearchResultLandsOnItsRow() {
        try (var controller = Robolectric.buildActivity(SettingsActivity.class).setup()) {
            SettingsActivity activity = controller.get();
            SettingsSearchCatalog catalog = new SettingsSearchCatalog(activity);
            List<String> missing = new ArrayList<>();
            for (SettingsSearchCatalog.Row row : catalog.rows.values()) {
                activity.openSearchResult(row);
                if (row.route == SettingsSearchCatalog.Route.DIAGNOSTICS) continue; // the result is the page itself
                View target = activity.page().findViewWithTag(activity.getString(row.title));
                if (target == null && row.fallback != 0) target = activity.page().findViewWithTag(activity.getString(row.fallback));
                if (target == null) missing.add(row.route + " / " + activity.getString(row.title));
            }
            assertTrue("search results without a row: " + missing, missing.isEmpty());
            assertNotNull(catalog.rows);
        }
    }
}
