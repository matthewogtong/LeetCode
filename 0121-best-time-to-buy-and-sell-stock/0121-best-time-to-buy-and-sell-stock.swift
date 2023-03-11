class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var minPrice = Int.max
        var maxProfit = 0
        
        for price in prices {
            let potentialProfit = price - minPrice
            maxProfit = max(maxProfit, potentialProfit)
            minPrice = min(minPrice, price)
        }
        
        return maxProfit
    }
}