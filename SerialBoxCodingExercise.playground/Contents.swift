import UIKit
import PlaygroundSupport
import UserNotifications

/*
 STEP 1.
 
 OVERVIEW:
 Serial Box produces serialized fantasy and science fiction stories in text and audio formats. In this exercise, we want to build a recommendation engine that will return a list of recommendations for our users.
 
 For the purpose of this exercise, when building this recommendation engine, let's assume that we have already retrieved a response from our servers which includes:
 * all our titles, with information about whether the titles have launched, how recently the titles launched, and what their overall rating is.
 * which titles the user already owns
 * which titles the user has skipped or passed on
 
 FUNCTIONALITY:
 There are many different strategies we could use here but for the sake of the exercise, let's go with a simple one based solely on ratings.
 
 This recommendation engine should recommend:
 * only titles where "is_launched" == true
 * only titles the user doesn't own already and hasn't previously skipped over
 * orders the titles by descending rating (highest to lowest)
 
 DIRECTIONS:
 Write the function which creates such a recommendation engine (see the skeleton function calls at the bottom) and then, given a recommendation strategy, returns a list of titles in order of recommendation.
 
 REQUIREMENTS:
 There is no "correct" way to implement this but there are some parameters:
 - Once an initial recommendation list has been generated, the recommendation list should be cached so that subsequent runs of the recommendation engine will first return the cached list prior to returning the newly parsed list from the faux network response (it's fine if the cached and new lists contain the same results)
 - Please add in a print statement that denotes when the cached recommendation is returned, e.g. `print("Cached result: \(recommendations)")`
 - All code must reside in this playground
 - Assume the "user" will only ever have a single device and a single instance of this app (i.e. no data syncing across devices is required)
 - Only out-of-the box iOS APIs may be utilized (i.e., no 3rd party libraries)
 - The code should be robust, maintainable and include any/all optimizations, error handling, etc. you see fit
 */

let backendResponse = [
    "titles": [
        [
            "name": "Bookburners",
            "is_launched": true,
            "rating": 4.1
        ],
        [
            "name": "Tremontaine",
            "is_launched": true,
            "rating": 4.3
        ],
        [
            "name": "Black Widow",
            "is_launched": false
        ],
        [
            "name": "Thor",
            "is_launched": false
        ],
        [
            "name": "The Triangle",
            "is_launched": false,
            "rating": 3.8
        ],
        [
            "name": "The Vela",
            "is_launched": true,
            "rating": 4.6
        ],
        [
            "name": "Jessica Jones",
            "is_launched": false
        ],
        [
            "name": "Ninth Step Station",
            "is_launched": true,
            "rating": 4.9
        ]
    ],
    "skips": ["The Triangle"],
    "titles_owned": ["Tremontaine", "Jessica Jones"]
]

/*

 STEP 2.
 YOUR CODE GOES HERE
 
*/

/*
 STEP 3.
 UNCOMMENT THIS BLOCK OF CODE WHEN READY TO RUN YOUR CODED SOLUTION;
 YOU CAN IMPROVE UPON THE FUNCTION SIGNATURE AS YOU SEE FIT, SO LONG AS
 THE DESIRED OUTPUT REMAINS THE SAME
 
let recommendationEngine = RecommendationEngineFactory.makeRecommendationEngine(fromResponse: backendResponse)
if let recommendations = recommendationEngine?.getRecommendations(basedOn: .ratings), !recommendations.isEmpty {
    print("Final result: \(recommendations)")
}
else {
    assertionFailure("Failed to retrieve recommendations")
}
*/

// Expected output should be similar to: "Final result: ["Ninth Step Station", "The Vela", "Bookburners"]"

PlaygroundPage.current.needsIndefiniteExecution = false
