//
//  LocationsDataService.swift
//  MapTest
//
//  Created by Nick Sarno on 11/26/21.
//

import Foundation
import MapKit

class LocationsDataService {
    
    static let locations: [Location] = [
        Location(
            Name: "Θέα Πετρούπολη 1",
            CityName: "Πετρούπολη",
            Coordinates: CLLocationCoordinate2D(latitude: 38.054167, longitude: 23.679760),
            Description: "The Colosseum is an oval amphitheatre in the centre of the city of Rome, Italy, just east of the Roman Forum. It is the largest ancient amphitheatre ever built, and is still the largest standing amphitheatre in the world today, despite its age.",
            ImageNames: [
                "rome-colosseum-1",
                "rome-colosseum-2",
                "rome-colosseum-3",
            ],
            Link: "https://en.wikipedia.org/wiki/Colosseum"),
        Location(
            Name: "Θέα Πετρούπολη 2",
            CityName: "Πετρούπολη",
            Coordinates: CLLocationCoordinate2D(latitude: 38.050661, longitude: 23.689490),
            Description: "The Pantheon is a former Roman temple and since the year 609 a Catholic church, in Rome, Italy, on the site of an earlier temple commissioned by Marcus Agrippa during the reign of Augustus.",
            ImageNames: [
                "rome-pantheon-1",
                "rome-pantheon-2",
                "rome-pantheon-3",
            ],
            Link: "https://en.wikipedia.org/wiki/Pantheon,_Rome"),
        Location(
            Name: "Πυροβολεία",
            CityName: "Κορυδαλλός",
            Coordinates: CLLocationCoordinate2D(latitude: 37.995331, longitude: 23.633844),
            Description: "The Trevi Fountain is a fountain in the Trevi district in Rome, Italy, designed by Italian architect Nicola Salvi and completed by Giuseppe Pannini and several others. Standing 26.3 metres high and 49.15 metres wide, it is the largest Baroque fountain in the city and one of the most famous fountains in the world.",
            ImageNames: [
                "rome-trevifountain-1",
                "rome-trevifountain-2",
                "rome-trevifountain-3",
            ],
            Link: "https://en.wikipedia.org/wiki/Trevi_Fountain"),
        Location(
            Name: "Θεα με δέντρο Πεντέλη",
            CityName: "Πεντέλη",
            Coordinates: CLLocationCoordinate2D(latitude: 38.080458, longitude: 23.863368),
            Description: "The Eiffel Tower is a wrought-iron lattice tower on the Champ de Mars in Paris, France. It is named after the engineer Gustave Eiffel, whose company designed and built the tower. Locally nicknamed 'La dame de fer', it was constructed from 1887 to 1889 as the centerpiece of the 1889 World's Fair and was initially criticized by some of France's leading artists and intellectuals for its design, but it has become a global cultural icon of France and one of the most recognizable structures in the world.",
            ImageNames: [
                "paris-eiffeltower-1",
                "paris-eiffeltower-2",
            ],
            Link: "https://en.wikipedia.org/wiki/Eiffel_Tower"),
        Location(
            Name: "Θέα Κηπούπολη",
            CityName: "Πετρούπολη",
            Coordinates: CLLocationCoordinate2D(latitude: 38.0353823, longitude: 23.6679793),
            Description: "The Eiffel Tower is a wrought-iron lattice tower on the Champ de Mars in Paris, France. It is named after the engineer Gustave Eiffel, whose company designed and built the tower. Locally nicknamed 'La dame de fer', it was constructed from 1887 to 1889 as the centerpiece of the 1889 World's Fair and was initially criticized by some of France's leading artists and intellectuals for its design, but it has become a global cultural icon of France and one of the most recognizable structures in the world.",
            ImageNames: [
                "paris-eiffeltower-1",
                "paris-eiffeltower-2",
            ],
            Link: "https://en.wikipedia.org/wiki/Eiffel_Tower"),
        Location(
            Name: "Τέρα Πέτρα",
            CityName: "Πετρούπολη",
            Coordinates: CLLocationCoordinate2D(latitude: 38.0445822, longitude: 23.6732914),
            Description: "The Eiffel Tower is a wrought-iron lattice tower on the Champ de Mars in Paris, France. It is named after the engineer Gustave Eiffel, whose company designed and built the tower. Locally nicknamed 'La dame de fer', it was constructed from 1887 to 1889 as the centerpiece of the 1889 World's Fair and was initially criticized by some of France's leading artists and intellectuals for its design, but it has become a global cultural icon of France and one of the most recognizable structures in the world.",
            ImageNames: [
                "paris-eiffeltower-1",
                "paris-eiffeltower-2",
            ],
            Link: "https://en.wikipedia.org/wiki/Eiffel_Tower"),
        Location(
            Name: "Περιφερειακός Γαλατσίου",
            CityName: "Γαλάτσι",
            Coordinates: CLLocationCoordinate2D(latitude: 38.0063049, longitude: 23.7548162),
            Description: "The Louvre, or the Louvre Museum, is the world's most-visited museum and a historic monument in Paris, France. It is the home of some of the best-known works of art, including the Mona Lisa and the Venus de Milo. A central landmark of the city, it is located on the Right Bank of the Seine in the city's 1st arrondissement.",
            ImageNames: [
                "paris-louvre-1",
                "paris-louvre-2",
                "paris-louvre-3",
            ],
            Link: "https://en.wikipedia.org/wiki/Louvre"),
        Location(
            Name: "Κρυφή παράλληλος περιφερειακού",
            CityName: "Γαλάτσι",
            Coordinates: CLLocationCoordinate2D(latitude: 38.0047640, longitude: 23.7526094),
            Description: "The Louvre, or the Louvre Museum, is the world's most-visited museum and a historic monument in Paris, France. It is the home of some of the best-known works of art, including the Mona Lisa and the Venus de Milo. A central landmark of the city, it is located on the Right Bank of the Seine in the city's 1st arrondissement.",
            ImageNames: [
                "paris-louvre-1",
                "paris-louvre-2",
                "paris-louvre-3",
            ],
            Link: "https://en.wikipedia.org/wiki/Louvre"),
        Location(
            Name: "Ναός Προφήτη Ηλία",
            CityName: "Πεντέλη",
            Coordinates: CLLocationCoordinate2D(latitude: 38.0814450, longitude: 23.8825285),
            Description: "The Louvre, or the Louvre Museum, is the world's most-visited museum and a historic monument in Paris, France. It is the home of some of the best-known works of art, including the Mona Lisa and the Venus de Milo. A central landmark of the city, it is located on the Right Bank of the Seine in the city's 1st arrondissement.",
            ImageNames: [
                "paris-louvre-1",
                "paris-louvre-2",
                "paris-louvre-3",
            ],
            Link: "https://en.wikipedia.org/wiki/Louvre"),
        Location(
            Name: "Πλάτωμα Πεντέλη",
            CityName: "Πεντέλη",
            Coordinates: CLLocationCoordinate2D(latitude: 38.0608309, longitude: 23.8955299),
            Description: "The Louvre, or the Louvre Museum, is the world's most-visited museum and a historic monument in Paris, France. It is the home of some of the best-known works of art, including the Mona Lisa and the Venus de Milo. A central landmark of the city, it is located on the Right Bank of the Seine in the city's 1st arrondissement.",
            ImageNames: [
                "paris-louvre-1",
                "paris-louvre-2",
                "paris-louvre-3",
            ],
            Link: "https://en.wikipedia.org/wiki/Louvre"),
        Location(
            Name: "Πάρκινγκ Ντράφι",
            CityName: "Πεντέλη",
            Coordinates: CLLocationCoordinate2D(latitude: 38.0473880, longitude: 23.8778679),
            Description: "The Louvre, or the Louvre Museum, is the world's most-visited museum and a historic monument in Paris, France. It is the home of some of the best-known works of art, including the Mona Lisa and the Venus de Milo. A central landmark of the city, it is located on the Right Bank of the Seine in the city's 1st arrondissement.",
            ImageNames: [
                "paris-louvre-1",
                "paris-louvre-2",
                "paris-louvre-3",
            ],
            Link: "https://en.wikipedia.org/wiki/Louvre"),
        Location(
            Name: "Θέα Αγία Παρασκευή",
            CityName: "Αγία Παρασκευή",
            Coordinates: CLLocationCoordinate2D(latitude: 37.9918627, longitude: 23.8227257),
            Description: "Προσοχή στην οδήγηση, πρέπει να πας από κάτω",
            ImageNames: [
                "paris-louvre-1",
                "paris-louvre-2",
                "paris-louvre-3",
            ],
            Link: "https://en.wikipedia.org/wiki/Louvre"),
        Location(
            Name: "Θέα Βύρωνα",
            CityName: "Βύρωνα",
            Coordinates: CLLocationCoordinate2D(latitude: 37.9506666, longitude: 23.7615136),
            Description: "Δεν έχω πάει ακόμη...",
            ImageNames: [
                "paris-louvre-1",
                "paris-louvre-2",
                "paris-louvre-3",
            ],
            Link: "https://en.wikipedia.org/wiki/Louvre"),
        Location(
            Name: "Θέα Γλυφάδα",
            CityName: "Γλυφάδα",
            Coordinates: CLLocationCoordinate2D(latitude: 37.8687453, longitude: 23.7723226),
            Description: "Προσοχή στην οδήγηση, πρέπει να πας από κάτω",
            ImageNames: [
                "paris-louvre-1",
                "paris-louvre-2",
                "paris-louvre-3",
            ],
            Link: "https://en.wikipedia.org/wiki/Louvre"),
        Location(
            Name: "Λήμνη Βουλιαγμένης",
            CityName: "Βουλιαγμένη",
            Coordinates: CLLocationCoordinate2D(latitude: 37.8075586, longitude: 23.7875200),
            Description: "Προσοχή στην οδήγηση, πρέπει να πας από κάτω",
            ImageNames: [
                "paris-louvre-1",
                "paris-louvre-2",
                "paris-louvre-3",
            ],
            Link: "https://en.wikipedia.org/wiki/Louvre"),
        Location(
            Name: "Λαιμός Βουλιαγμένη",
            CityName: "Βουλιαγμένη",
            Coordinates: CLLocationCoordinate2D(latitude: 37.7991610, longitude: 23.7721711),
            Description: "Προσοχή στην οδήγηση, πρέπει να πας από κάτω",
            ImageNames: [
                "paris-louvre-1",
                "paris-louvre-2",
                "paris-louvre-3",
            ],
            Link: "https://en.wikipedia.org/wiki/Louvre"),
        Location(
            Name: "Άλσος Καισαριανής",
            CityName: "Καισαριανή",
            Coordinates: CLLocationCoordinate2D(latitude: 37.9712107, longitude: 23.8126158),
            Description: "Προσοχή στην οδήγηση, πρέπει να πας από κάτω",
            ImageNames: [
                "paris-louvre-1",
                "paris-louvre-2",
                "paris-louvre-3",
            ],
            Link: "https://en.wikipedia.org/wiki/Louvre"),
        Location(
            Name: "Πάρκινγκ Λυκαβηττού",
            CityName: "Λυκαβηττός",
            Coordinates: CLLocationCoordinate2D(latitude: 37.9836167, longitude: 23.7461543),
            Description: "Προσοχή στην ολίσθηση, μην πας όταν είναι βρεγμένα",
            ImageNames: [
                "paris-louvre-1",
                "paris-louvre-2",
                "paris-louvre-3",
            ],
            Link: "https://en.wikipedia.org/wiki/Louvre"),
    ]
    
}
