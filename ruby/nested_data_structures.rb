=begin
5.4 Nested Data Structures
Author: Marcos Pletcher
=end

# Design and Build a Nested Data Structure

nyc_midtown_neighborhoods  = {
    midtown: {
        # distinct data regarding this neighborhood
        information: {
            landmark: "Empire State Building",
            rent_average_sq_foot: 2258,
            limits_south_north_east_west: "34th to 59th Streets",
        },
        # list of movies
        appears_in_a_number_of_movies: [
            "Shaft",
            "The Devil Wears Prada",
            "Side Effects",
            "Vanilla Sky"
        ]
    },

    midtown_west: {
        # distinct data regarding this neighborhood
        information: {
            landmark: "Top of the Rock",
            rent_average_sq_foot: 1512.31,
            limits_south_north_east_west: "34th to 59th Streets; 5th Avenue to the Hudson River",
        },

        # list of movies
        appears_in_a_number_of_movies: [
            "The Wolf of Wall Street",
            "Mistress America",
            "Sex And The City"
        ]
    },

    midtown_east: {
         # distinct data regarding this neighborhood
        information: {
            landmark: "Chrysler Building",
            rent_average_sq_foot: 1115.38,
            limits_south_north_east_west: "42nd to 59th Streets; East River to 5th Avenue",
        },

        # list of movies
        appears_in_a_number_of_movies: [
            "The Normal Heart",
            "American Dream in China",
            "Sex And the City",
            "Gremlins 2"
        ]   
    },

    columbus_circle: {
        # distinct data regarding this neighborhood
        information: {
            landmark: "Central Park",
            rent_average_sq_foot: 1685,
            limits_south_north_east_west: "59th Street and 8th Avenue",
        },

        # list of movies
        appears_in_a_number_of_movies: [
            "It Should Happen to You",
            "Ghostbusters",
            "Home Alone 2: Lost in New York"
        ]
    },

    sutton_place: {
        # distinct data regarding this neighborhood
        information: {
            landmark: "Ed Koch Queensboro Bridge",
            rent_average_sq_foot: 1557,
            limits_south_north_east_west: "53rd to 59th Streets; 1st Avenue to Sutton Place",
        },

        # list of movies
        appears_in_a_number_of_movies: [
            "Manhattan",
            "American Gangster"
        ]
    },

    rockefeller_center: {
        # distinct data regarding this neighborhood
        information: {
            landmark: "Rockefeller Center",
            rent_average_sq_foot: 1729.44,
            limits_south_north_east_west: "49th to 51st Streets; 5th to 6th Avenues",
        },

        # list of movies
        appears_in_a_number_of_movies: [
            "Ghostbusters",
            "Home Alone 2: Lost in New York",
            "Spider-Man"
        ]
    },

    diamond_district: {
        # distinct data regarding this neighborhood
        information: {
            landmark: "Dag Hammarskjold Plaza",
            rent_average_sq_foot: 1729.44,
            limits_south_north_east_west: "47th Street from 5th to 6th Avenues",
        },

        # list of movies
        appears_in_a_number_of_movies: [
            "New York, I Love You",
            "Marathon Man",
            "A Stranger Among Us"
        ]
    },

    theater_district: {
        # distinct data regarding this neighborhood
        information: {
            landmark: "Broadway theaters",
            rent_average_sq_foot: 1729.44,
            limits_south_north_east_west: "42nd to 53rd Streets; 6th to 8th Avenues",
        },

        # list of movies
        appears_in_a_number_of_movies: [
            "Big Daddy",
            "Gloria",
            "Anything Else"
        ]
    },

    turtle_bay: {
        # distinct data regarding this neighborhood
        information: {
            landmark: "United Nations",
            rent_average_sq_foot: 1242.07,
            limits_south_north_east_west: "42nd to 53rd Streets; East River to Lexington Avenue",
        },

        # list of movies
        appears_in_a_number_of_movies: [
            "The Family Man",
            "Manhattan"
       ]
    },

    tudor_city: {
        # distinct data regarding this neighborhood
        information: {
            landmark: "Chrysler Building",
            rent_average_sq_foot: 1126.21,
            limits_south_north_east_west: "40th to 43rd Streets; 1st to 2nd Avenues",
        },

        # list of movies
        appears_in_a_number_of_movies: [
            "Superman",
            "Gremlins 2"
        ]
    },

    little_brazil: {
        # distinct data regarding this neighborhood
        information: {
            landmark: "Brazilian Restaurants",
            rent_average_sq_foot: 1729.44,
            limits_south_north_east_west: "46th Street from 5th to 6th Avenues",
        }, 

        # list of movies
        appears_in_a_number_of_movies: [
            "I Think I Love my Wife"
        ]
    },

    times_square: {
        # distinct data regarding this neighborhood
        information: {
            landmark: "Coca-Cola sign",
            rent_average_sq_foot: 1800,
            limits_south_north_east_west: "39th to 52nd Streets; 7th to 9th Avenues",
        },

        # list of movies
        appears_in_a_number_of_movies: [
            "Resident Evil: Retribution",
            "The Amazing Spiderman 2",
            "Teenage Mutant Ninja Turtles"
        ]
    },

    hudson_yards: {
        # distinct data regarding this neighborhood
        information: {
            landmark: "Future Hudson Yards Sculpture",
            rent_average_sq_foot: 1512.31,
            limits_south_north_east_west: "28th to 43rd Streets; 7th Avenue to the Hudson River",
        },

        # list of movies
        appears_in_a_number_of_movies: [
            "Birdman",
            "The Last Five Years"
        ]
    },

    hells_kitchen: {
        # distinct data regarding this neighborhood
        information: {
            landmark: "Gimbels Traverse",
            rent_average_sq_foot: 1512.31,
            limits_south_north_east_west: "34th to 57th Streets; 8th to the Hudson River",
        },

        # list of movies
        appears_in_a_number_of_movies: [
            "Bringing Out the Dead",
            "The Wolf of Wall Street",
            "the Secret Life of Walter Mitty"
        ]
    },

    garment_district: {
        # distinct data regarding this neighborhood
        information: {
            landmark: "The Garment Worker",
            rent_average_sq_foot: 1291.59,
            limits_south_north_east_west: "34th to 42nd Streets and 5th to 9th Avenues",
        },

        # list of movies
        appears_in_a_number_of_movies: [
            "The Other Woman",
            "The Amazing Spider-Man 2"
        ]
    },

    herald_square: {
        # distinct data regarding this neighborhood
        information: {
            landmark: "Greeley Square",
            rent_average_sq_foot: 1291.59,
            limits_south_north_east_west: "34th Street and 6th Avenue",
        },

        # list of movies
        appears_in_a_number_of_movies: [
            "The Amazing Spider-Man 2",
            "Bubble Girl",
            "Finding Mr. Right"
        ]
    },

    koreatown: {
        # distinct data regarding this neighborhood
        information: {
            landmark: "Koreatown at night",
            rent_average_sq_foot: 1291.59,
            limits_south_north_east_west: "31st to 36th Streets; 5th to 6th Avenues",
        },

        # list of movies
        appears_in_a_number_of_movies: [
            "The Amazing Spider-Man 2",
            "Sex And The City"
        ]
    },

    murray_hill: {
        # distinct data regarding this neighborhood
        information: {
            landmark: "Row houses",
            rent_average_sq_foot: 1126.21,
            limits_south_north_east_west: "34th to 40th Streets; 3rd to Madison Avenues",
        },

        # list of movies
        appears_in_a_number_of_movies: [
            "Along Came Polly",
            "The Bounty Hunter"
        ]
    },

    tenderloin: {
        # distinct data regarding this neighborhood
        information: {
            landmark: "The Metropole / Hotel Casablanca today",
            rent_average_sq_foot: 1300,
            limits_south_north_east_west: "23rd Street to 42nd Streets; 5th to 7th Avenues",
        },

        # list of movies
        appears_in_a_number_of_movies: [
            "An Englishman in New York",
            "Gloria"
        ]
    },
  
    madison_square: {
        # distinct data regarding this neighborhood
        information: {
            landmark: "Madison Square Garden",
            rent_average_sq_foot: 1928.92,
            limits_south_north_east_west: "23rd to 26th Streets; 5th Avenue to Broadway",
        },

        # list of movies
        appears_in_a_number_of_movies: [
            "The Amazing Spider-Man 2",
            "Tracers"
        ]
    },
} # close nyc_midtown_neighborhoods

# print results
p nyc_midtown_neighborhoods[:midtown][:information]
p nyc_midtown_neighborhoods[:garment_district][:information][:rent_average_sq_foot]
p nyc_midtown_neighborhoods[:hells_kitchen][:appears_in_a_number_of_movies]