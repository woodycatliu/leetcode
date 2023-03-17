class Solution {
    func angleClock(_ hour: Int, _ minutes: Int) -> Double {
        return _angleClock(hour, minutes)
    }
    
    fileprivate func _angleClock(_ hour: Int, _ minutes: Int) -> Double {
        let angle = abs(convert(minutes: minutes) - convertHour(hour, min: minutes))
        return angle > 180 ? 360 - angle : angle
    }
    
    fileprivate func convert(minutes: Int) -> Double {
        return minutes == 60 ? 0 : Double(minutes) * 6
    }
    
    fileprivate func convertHour(_ hour: Int, min: Int) -> Double {
        return Double(hour) * 30 + Double(min) / 60 * 5 * 6
    }
}
