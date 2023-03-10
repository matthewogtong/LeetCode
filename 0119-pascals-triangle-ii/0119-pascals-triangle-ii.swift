class Solution {
    func getRow(_ rowIndex: Int) -> [Int] {
        var row = [[1], [1, 1]]
    
        if rowIndex <= 1 {
            return row[rowIndex]
        }

        for i in 2...rowIndex {
            var currentRow = [1]

            for j in 1..<i {
                let value = row[i - 1][j - 1] + row[i - 1][j]
                currentRow.append(value)
            }

            currentRow.append(1)
            row.append(currentRow)
        }

        return row[rowIndex]
    }
}