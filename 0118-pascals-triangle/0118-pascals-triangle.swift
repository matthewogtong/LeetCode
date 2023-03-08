class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        var result: [[Int]] = []
        var row: [Int] = [1]
        result.append(row)
        
        for i in 1..<numRows {
            var newRow = Array(repeating: 0, count: i+1)
            newRow[0] = 1
            newRow[i] = 1
            for j in 1..<i {
                newRow[j] = row[j-1] + row[j]
            }
            row = newRow
            result.append(row)
        }
        
        return result
    }
}