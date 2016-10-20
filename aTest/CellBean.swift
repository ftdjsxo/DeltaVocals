//
//  CellBean.swift
//  aTest
//
//  Created by Francesco Thiery on 20/10/16.
//  Copyright © 2016 Coocked. All rights reserved.
//

import Foundation

class CellBean {
    var selected : Bool
    let title : String
    let imageName : String?
    let audioTitle : String
    
    init(selected : Bool, title : String, imageName : String?, audioTitle : String) {
        self.selected = selected
        self.title = title
        self.imageName = imageName
        self.audioTitle = audioTitle
    }
    
    class func getBeans()-> [CellBean]{
        return[
            CellBean.init(selected: false, title: "aaaaaaaaaaaaaaaaaaaah (sbadiglio)", imageName: "audio", audioTitle : "aaaaaaaaaaaaaaaaaaaah (sbadiglio)"),
            CellBean.init(selected: false, title: "ah ah che cazzo me ne frega a me!", imageName: "audio", audioTitle : "ah ah che cazzo me ne frega a me!"),
            CellBean.init(selected: false, title: "Ah ah, ricchioni maledetti", imageName: "audio", audioTitle : "Ah ah, ricchioni maledetti"),
            CellBean.init(selected: false, title: "Ah ah... non mi fate incazzere", imageName: "audio", audioTitle : "Ah ah... non mi fate incazzere"),
            CellBean.init(selected: false, title: "Ah com'è umano lei... merdaccia!!!", imageName: "audio", audioTitle : "Ah com'è umano lei... merdaccia!!!"),
            CellBean.init(selected: false, title: "Andate a dormire brutti bastardi", imageName: "audio", audioTitle : "Andate a dormire brutti bastardi"),
            CellBean.init(selected: false, title: "Bestia che roba!!!", imageName: "audio", audioTitle : "Bestia che roba!!!"),
            CellBean.init(selected: false, title: "Buonasera un cazzo!", imageName: "audio", audioTitle : "Buonasera un cazzo!"),
            CellBean.init(selected: false, title: "Cagnolino", imageName: "audio", audioTitle : "Cagnolino"),
            CellBean.init(selected: false, title: "Champagne (ubriaco)", imageName: "audio", audioTitle : "Champagne (ubriaco)"),
            CellBean.init(selected: false, title: "Che siete handicappati (Attila)", imageName: "audio", audioTitle : "Che siete handicappati (Attila)"),
            CellBean.init(selected: false, title: "Chi cazzo lo conosce. Terrone maledetto (Banfi)", imageName: "audio", audioTitle : "Chi cazzo lo conosce. Terrone maledetto (Banfi)"),
            CellBean.init(selected: false, title: "Chobin boing boing piccolo carino e bello", imageName: "audio", audioTitle : "Chobin boing boing piccolo carino e bello"),
            CellBean.init(selected: false, title: "Collaudo Huawei", imageName: "audio", audioTitle : "Collaudo Huawei"),
            CellBean.init(selected: false, title: "Delta non bestemmia", imageName: "audio", audioTitle : "Delta non bestemmia"),
            CellBean.init(selected: false, title: "Dio porco!", imageName: "audio", audioTitle : "Dio porco!"),
            CellBean.init(selected: false, title: "Dove passo io non cresce più l'erba caro (Attila)", imageName: "audio", audioTitle : "Dove passo io non cresce più l'erba caro (Attila)"),
            CellBean.init(selected: false, title: "Eh la madooonna!!!", imageName: "audio", audioTitle : "Eh la madooonna!!!"),
            CellBean.init(selected: false, title: "Esatto!", imageName: "audio", audioTitle : "Esatto!"),
            CellBean.init(selected: false, title: "Interferenza Huawei", imageName: "audio", audioTitle : "Interferenza Huawei"),
            CellBean.init(selected: false, title: "Lupo", imageName: "audio", audioTitle : "Lupo"),
            CellBean.init(selected: false, title: "ma a me che cazzo me ne frega a me", imageName: "audio", audioTitle : "ma a me che cazzo me ne frega a me"),
            CellBean.init(selected: false, title: "Ma andate a cagare va'", imageName: "audio", audioTitle : "Ma andate a cagare va'"),
            CellBean.init(selected: false, title: "ma che cazzo dici! io son mica scemo!", imageName: "audio", audioTitle : "ma che cazzo dici! io son mica scemo!"),
            CellBean.init(selected: false, title: "Ma che è sta cafonata", imageName: "audio", audioTitle : "Ma che è sta cafonata"),
            CellBean.init(selected: false, title: "Ma che è stammerda!", imageName: "audio", audioTitle : "Ma che è stammerda!"),
            CellBean.init(selected: false, title: "Ma vaffanculo va'", imageName: "audio", audioTitle : "Ma vaffanculo va'"),
            CellBean.init(selected: false, title: "Ma vai a cagare va' (ubriaco)", imageName: "audio", audioTitle : "Ma vai a cagare va' (ubriaco)"),
            CellBean.init(selected: false, title: "Ma vai a cagare va' 2", imageName: "audio", audioTitle : "Ma vai a cagare va' 2"),
            CellBean.init(selected: false, title: "Ma vai a cagare va' 3", imageName: "audio", audioTitle : "Ma vai a cagare va' 3"),
            CellBean.init(selected: false, title: "Ma vai a cagare va' pirla", imageName: "audio", audioTitle : "Ma vai a cagare va' pirla"),
            CellBean.init(selected: false, title: "Ma vai a cagare va'... uh uh ah ah!!!", imageName: "audio", audioTitle : "Ma vai a cagare va'... uh uh ah ah!!!"),
            CellBean.init(selected: false, title: "Ma vai a cagare va'", imageName: "audio", audioTitle : "Ma vai a cagare va'"),
            CellBean.init(selected: false, title: "Ma vattela à pijà n' tel culo va'!", imageName: "audio", audioTitle : "Ma vattela à pijà n' tel culo va'!"),
            CellBean.init(selected: false, title: "Madonna dell' incoroneta", imageName: "audio", audioTitle : "Madonna dell' incoroneta"),
            CellBean.init(selected: false, title: "Mi hai preso per rincoglioneto!", imageName: "audio", audioTitle : "Mi hai preso per rincoglioneto!"),
            CellBean.init(selected: false, title: "Oooooo", imageName: "audio", audioTitle : "Oooooo"),
            CellBean.init(selected: false, title: "Orango uh uh uh", imageName: "audio", audioTitle : "Orango uh uh uh"),
            CellBean.init(selected: false, title: "Pernacchia", imageName: "audio", audioTitle : "Pernacchia"),
            CellBean.init(selected: false, title: "Porco Dio", imageName: "audio", audioTitle : "Porco Dio"),
            CellBean.init(selected: false, title: "Risata scimmia", imageName: "audio", audioTitle : "Risata scimmia"),
            CellBean.init(selected: false, title: "Sh sh sh sh ai ue ai u (ubriaco)", imageName: "audio", audioTitle : "Sh sh sh sh ai ue ai u (ubriaco)"),
            CellBean.init(selected: false, title: "Sì sente molto bene il microfono del tuo Huawei", imageName: "audio", audioTitle : "Sì sente molto bene il microfono del tuo Huawei"),
            CellBean.init(selected: false, title: "Siete proprio dei bastardi", imageName: "audio", audioTitle : "Siete proprio dei bastardi"),
            CellBean.init(selected: false, title: "Stocazzo", imageName: "audio", audioTitle : "Stocazzo"),
            CellBean.init(selected: false, title: "Stooonzooooooo", imageName: "audio", audioTitle : "Stooonzooooooo"),
            CellBean.init(selected: false, title: "Stronzo!", imageName: "audio", audioTitle : "Stronzo!"),
            CellBean.init(selected: false, title: "Tarzan", imageName: "audio", audioTitle : "Tarzan"),
            CellBean.init(selected: false, title: "Te faccio vedé i sorci verdi aoh!", imageName: "audio", audioTitle : "Te faccio vedé i sorci verdi aoh!"),
            CellBean.init(selected: false, title: "Viuleeenza!!!", imageName: "audio", audioTitle : "Viuleeenza!!!")]
    }
}
