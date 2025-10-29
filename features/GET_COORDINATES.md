# FEATURE: Get coordinates

For very Friend for which we have the address we want to have the coordinates, so we can show it on a map.

* As soon as there is a new Friend entry or a the address of a Friend's was modified, this should be omn the list of Friends addresses that need to be translated to coordinates.
* There is a CoordinateService that takes care of mapping addresses to coordinates.
* The CoordinatesService does not block the UI
* The CoordinateManager keeps a queue of addresses that need to be translated
* Coordinates are stored in the Friend class and thus automagically stored in SwiftData

## Questions

* What service can we use to get coordinates from an address? Is there a way to use Apple Maps? Or Google? Or is there another service?
* How do we note that an address changed and thus the Coordinates have to be re-evaluated?