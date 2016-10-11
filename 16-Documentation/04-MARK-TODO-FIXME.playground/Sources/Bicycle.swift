import Foundation

/// 🚲 A two-wheeled, human-powered mode of transportation.
public class Bicycle {
    /**
     Frame and construction style.
     
     - Road: For streets or trails.
     - Touring: For long journeys.
     - Cruiser: For casual trips around town.
     - Hybrid: For general-purpose transportation.
     */
    public enum Style {
        case Road, Touring, Cruiser, Hybrid
    }
    
    /**
     Mechanism for converting pedal power into motion.
     
     - Fixed: A single, fixed gear.
     - Freewheel: A variable-speed, disengageable gear.
     */
    public enum Gearing {
        case Fixed
        case Freewheel(speeds: Int)
    }
    
    /**
     Hardware used for steering.
     
     - Riser: A casual handlebar.
     - Café: An upright handlebar.
     - Drop: A classic handlebar.
     - Bullhorn: A powerful handlebar.
     */
    public enum Handlebar {
        case Riser, Café, Drop, Bullhorn
    }
    
    /// The style of the bicycle.
    public let style: Style
    
    /// The gearing of the bicycle.
    public let gearing: Gearing
    
    /// The handlebar of the bicycle.
    public let handlebar: Handlebar
    
    /// The size of the frame, in centimeters.
    public let frameSize: Int
    
    /// The number of trips travelled by the bicycle.
    private(set) var numberOfTrips: Int
    
    /// The total distance travelled by the bicycle, in meters.
    private(set) var distanceTravelled: Double
    
    
    // MARK: Initializer
    /**
     Initializes a new bicycle with the provided parts and specifications.
     
     - Parameters:
     - style: The style of the bicycle
     - gearing: The gearing of the bicycle
     - handlebar: The handlebar of the bicycle
     - frameSize: The frame size of the bicycle, in centimeters
     
     - Returns: A beautiful, brand-new bicycle, custom built
     just for you.
     */
    public init(style: Style, gearing: Gearing, handlebar: Handlebar, frameSize centimeters: Int) {
        self.style = style
        self.gearing = gearing
        self.handlebar = handlebar
        self.frameSize = centimeters
        
        self.numberOfTrips = 0
        self.distanceTravelled = 0
    }
    
    // TODO: Offer a all parameters initializer
    
    // MARK: Methods
    /**
     Take a bike out for a spin.
     
     - Parameter meters: The distance to travel in meters.
     */
    public func travel(distance meters: Double) {
        if meters > 0 {
            distanceTravelled += meters
            // FIXME: Support Swift 2.2
            numberOfTrips++
        }
    }
    
    // TODO: changeColor()
}