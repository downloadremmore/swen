//
//   SDLConvertHelper.swift created on 28/12/15
//   Swen project
//
//   Copyright 2015 Ashley Towns <code@ashleytowns.id.au>
//
//   Licensed under the Apache License, Version 2.0 (the "License");
//   you may not use this file except in compliance with the License.
//   You may obtain a copy of the License at
//
//       http://www.apache.org/licenses/LICENSE-2.0
//
//   Unless required by applicable law or agreed to in writing, software
//   distributed under the License is distributed on an "AS IS" BASIS,
//   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//   See the License for the specific language governing permissions and
//   limitations under the License.
//

import CSDL

extension SDL_Rect {
  static func fromRect(rect: Rect) -> SDL_Rect {
    return SDL_Rect(x: Int32(rect.x), y: Int32(rect.y), w: Int32(rect.sizeX), h: Int32(rect.sizeY))
  }
}

extension SDL_Point {
  static func fromPoint(point: Vector) -> SDL_Point {
    return SDL_Point(x: Int32(point.x), y: Int32(point.y))
  }
}

extension SDL_Color {
  static func fromColour(colour: Colour) -> SDL_Color {
    return SDL_Color(r: colour.r, g: colour.g, b: colour.b, a: colour.a ?? 0)
  }
}

extension IPaddress {
  static func fromIPAddress(ipaddr: IPAddress) -> IPaddress {
    return IPaddress(host: ipaddr.host, port: ipaddr.port)
  }
}