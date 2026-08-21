/* Standalone diagnostic entry point.
 *
 * This file intentionally only runs the logger. It must never replace or
 * chain to Android's /init: a diagnostic helper must not be able to turn a
 * bootable image into a first-stage bootloop.
 */
#include "bootlogger.c"
