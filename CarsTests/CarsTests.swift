// Copyright (c) 2017 Lighthouse Labs. All rights reserved.
// 
// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
// distribute, sublicense, create a derivative work, and/or sell copies of the
// Software in any work that is designed, intended, or marketed for pedagogical or
// instructional purposes related to programming, coding, application development,
// or information technology.  Permission for such use, copying, modification,
// merger, publication, distribution, sublicensing, creation of derivative works,
// or sale is expressly withheld.
// 
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import XCTest
@testable import Cars

class CarsTests: XCTestCase {
  
  
  func test_shouldBuyCar_givenHatchBack_shouldReturnFalse() {
    
    let car = Car()
    car.type = "hatchback"
    
    let buyer = CarBuyer()
    let result = buyer.shouldBuy(car: car)
    XCTAssertFalse(result)
  
  }
  
  func test_shouldBuyCar_givenPinkCarAndHatchBack_shouldReturnFalse() {
    let car = Car()
    car.type = "hatchback"
    car.color = "pink"
    
    let buyer = CarBuyer()
    let result = buyer.shouldBuy(car: car)
    XCTAssertFalse(result)
    
  }
  
  func test_shouldBuyCar_givenPinkCar_shouldReturnTrue() {
    let car = Car()
    car.color = "pink"
    let buyer = CarBuyer()
    let result = buyer.shouldBuy(car: car)
    XCTAssertTrue(result)
  }
  
  func test_shouldBuyCar_givenBetween6and11mpgAndUnder5000_shouldReturnTrue() {
    
    let car = Car()
    car.litresPer100km = 6
    car.price = 4999
    let buyer = CarBuyer()
    let result = buyer.shouldBuy(car: car)
    XCTAssertTrue(result)
  }
  
  func test_shouldBuyCar_givenBetween6and11mpgAndOver5000_shouldReturnFalse() {
    
    let car = Car()
    car.litresPer100km = 11
    car.price = 5001
    let buyer = CarBuyer()
    let result = buyer.shouldBuy(car: car)
    XCTAssertFalse(result)
  }
  
  func test_shouldBuyCar_givenUnder5000andNotBetween6and11mpg_shouldReturnFalse() {
    let car = Car()
    car.litresPer100km = 12
    car.price = 5000
    let buyer = CarBuyer()
    let result = buyer.shouldBuy(car: car)
    XCTAssertFalse(result)
  }
  
  func test_shouldBuyCar_givenOver5000andNotBetween6and11mpg_shouldReturnFalse() {
    let car = Car()
    car.litresPer100km = 12
    car.price = 5001
    let buyer = CarBuyer()
    let result = buyer.shouldBuy(car: car)
    XCTAssertFalse(result)
  }
}
