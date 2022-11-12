import { sayHello } from './say-hello'

describe('say-hello', () => {
  it('should return correct string', () => {
    const greeting = sayHello('abc')
    expect(greeting).toBe('Hello abc')
  })
})
