/*
See the License.txt file for this sample’s licensing information.
*/

import Foundation
import SwiftUI

struct Info {
    let image: String
    let name: String
    let story: String
    let hobbies: [String]
    let foods: [String]
    let colors: [Color]
    let funFacts: [String]
}

let information = Info(
    image: "Placeholder",
    name: "My Name",
    story: "A story can be about anything you can dream up. There are no right answers, there is no one else.\n\nNeed some inspiration?\n• 🐶🐱🛶️🎭🎤🎧🎸\n• 🏄‍♀️🚵‍♀️🚴‍♀️⛵️🥾🏂⛷📚\n• ✍️🥖☕️🏋️‍♂️🚲🧗‍♀️ ",
    hobbies: ["bicycle", "ticket.fill", "book.fill"],
    foods: ["🥐", "🌮", "🍣"],
    colors: [Color.blue, Color.purple, Color.pink],
    funFacts: [
        "Considere mudar de local ou ir para regiões mais altas que não tenham riscos",
        
        "Se desconfia de deslizamento próximo, verifique a estrutura da sua residência e do local em que mora. Um bom exemplo é observar a estrutura da casa, pois suas condições podem definir se há movimentação no solo.",

        "Atente-se a sons incomuns no local;",

        "Se detectado o risco, acionar a Defesa Civil(199) ou Bombeiros (193) do munícipio, procurar o setor de engenharia e obras da prefeitura para que essas equipes analisem detalhadamente [o terreno], com conhecimento;",


       "Considere mudar de local ou ir para regiões mais altas que não tenham riscos;",
        
        "Saia imediatamente do local. Informe os vizinhos;",

       "Busque regiões fora da possível rota do deslizamento, como regiões mais altas ou mais distantes;",

        "BUSQUE PLANOS DE EVACUAÇÃO NA SUA CIDADE.",

       "Envolva sua cabeça com os braços formando uma bolha de ar em volta dela, principalmente na região do rosto;",

        "Se possível, fique próximo a cantos ou móveis sólidos de sua casa (como atrás da porta), para garantir um pouco de ar até a chegada das equipes de salvamento."
    ]
)
