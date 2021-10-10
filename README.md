# ICantBelieveItCanSort.swift
[![Swift Build & Test](https://github.com/treastrain/ICantBelieveItCanSort.swift/actions/workflows/swift.yml/badge.svg)](https://github.com/treastrain/ICantBelieveItCanSort.swift/actions/workflows/swift.yml)

Swift implementation of https://arxiv.org/abs/2110.01111

```swift
//  Stanley P. Y. Fung
//  Is this the simplest (and most surprising) sorting algorithm ever?
//  arXiv:2110.01111v1 [cs.DS] 3 Oct 2021
//  https://arxiv.org/abs/2110.01111v1
```

## Usage
```swift
import ICantBelieveItCanSort

var array = [6, 5, 8, 9, 1, 4, 3, 10, 7, 2]
array.iCantBelieveItCanSort()
array.iCantBelieveItCanSort(by: >)
```

```swift
import ICantBelieveItCanSort

let array1 = [6, 5, 8, 9, 1, 4, 3, 10, 7, 2].iCantBelieveItCanSorted()
let array2 = array1.iCantBelieveItCanSorted(by: >)
```

## Sample
[Sources/SortPlayground/main.swift](Sources/SortPlayground/main.swift)

## Implementation
[Sources/ICantBelieveItCanSort/ICantBelieveItCanSort.swift](Sources/ICantBelieveItCanSort/ICantBelieveItCanSort.swift)

## Requirements
Swift 4.0 or later.

## License
[MIT License](LICENSE)

## Author
[@treastrain](https://github.com/treastrain)
