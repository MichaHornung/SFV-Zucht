//
//  GewaesserTableViewController.swift
//  SFV-Zucht
//
//  Created by Michael Hornung on 21.12.22.
//

import UIKit

class GewaesserTableViewController: UITableViewController {
    
    
    let schauffele = [
        "Schauffele"]
    
    var gewaesserwelt = [
        Gewaesser(gewaesserPic: UIImage(named: "Schauffele1")!, gewaesserName: "Schauffele", lageTextViews: "Es liegt südlich von Wörth. (Ende Ortsteil in Richtung Hagenbach). Die nördliche Grenze bildet die Bahnstrecke Wörth-Kandel, im Osten die B9, im Süden die A652 und im Westen die K13.", gewaesserGroesseTextView: "ca.30 ha Wasserfläche", besonderheitenTextView: "Mit dem Aufstellen von Hinweisschildern am Nordufer des Schauffele durch den SFV, wurden ab dem Jahr 2019 die Auflagen der Kreisverwaltung zur Schaffung einer Tabuzone aus artenschutzrechtlichen Gründen (Schutz des Flussregenpfeifers) umgesetzt. Das Ufer darf zukünftig nur noch außerhalb der Brutzeit (01.Aug. bis 31.Mrz.) betreten werden. Das Betreten der vorgelagerten Inseln bleibt ganzjährig untersagt.", gewaesserInfo: "Der Schauffelesee wurde erstmals im Jahr 1965, damals noch gemeinsam mit den Vereinen aus Wendlingen und Nürtingen (Badenwürtemberg ) gepachtet. Im Jahre 1987 wurde der SFV-Wörth alleiniger Pächter. Diese Wasserfläche entstand durch den Betreiber des Kieswerkes, die Fa. Schauffele. Die Betreiberfirma hat in den letzten Jahren in vorbildlicher Weise in den Bereichen die nicht mehr zur Kiesförderung genutzt werden, Flachwasserzonen angelegt, die durch Bepflanzung mit Seerosen und anderen Pflanzen, ausgezeichnete Laichplätze für die Fischvielfalt dieses Baggersees bieten. Durch die vom Verein von Anfang an vorgenommen Besatzmaßnahmen und die gute Wasserqualität bietet dieses Gewässer eine abwechslungsreiche Fischwaid. 1999 führte das Institut für Umweltstudien (IUS) im Auftrag der Fa. Schauffele im Gewässer eine Fischbestands Aufnahme durch. Es ist darauf zu achten, dass im Schongewässer und einzelnen Uferbereichen nicht gefischt werden darf.", gewaesserKartePic: UIImage(named: "Schauffele")!)]
    
    let gemeindeloch = [
        "Gemeindeloch"]
    
    var gemeindelochgewaesser = [
        Gewaesser(gewaesserPic: UIImage(named: "Gemeindeloch1")!, gewaesserName: "Gemeindeloch 1/2", lageTextViews: "Die Gewässer liegen ca. 600m östlich von Wörth. Beide sind begrenzt vom Automobilwerk und der B9.", gewaesserGroesseTextView: " Je ca. 0,8 ha Wasserfläche", besonderheitenTextView: "keine", gewaesserInfo: "Gemeindeloch I:\nIm Jahr 1924 konnte die Gemeinde 1 gepachtet werden. Die durchschnittliche Wassertiefe beträgt ca. 8 Meter. Der Pegelstand dieses Gewässers ist abhängig vom Grundwasser- und Wasserstand des Rheines, da kein Zufluss vorhanden ist. Dieses Gewässer hat einen starken Pflanzenbewuchs, welcher sich in den Sommermonaten besonders auf den Sauerstoffhaushalt auswirkt. Im vorderen Teil wurde vom Verein eine Laichzone angelegt.\n\nGemeindeloch II:Nachdem es viele Jahre an Privatpersonen verpachtet war, wurde im Jahre 1994 der SFV Pächter. Der Pegelstand ist von denselben Faktoren abhängig wie die Gemeinde I. Die Gewässertiefe liegt bei ca. 8 Meter. Die im rechten Teil liegende Flachwasserzone bietet gute Laichmöglichkeiten und ist zum Abwachsen der Jungfische geeignet.", gewaesserKartePic: UIImage(named: "Gemeindelöcher")!),]
    
    
    let altrhein = [
        "Altrhein"]
    
    var altrheingewaesser = [
        Gewaesser(gewaesserPic: UIImage(named: "Altrhein1")!, gewaesserName: "Altrhein", lageTextViews: "Der Altrheinarm hat einen Zufluss im Osten von Wörth aus dem Rhein bei Stromkilometer 363 und fließt von dort vorbei zwischen der B9 und dem Automobilwerk. Hinter den beiden Tankstellen beim Bahnhof in einer Schleife entlang des alten Ortsteiles von Wörth bis zur Grillhütte und mündet über die Rheinauenanlage in den Landeshafen. Zu- und Abfluss werden über Schließen geregelt.", gewaesserGroesseTextView: "ca. 11,3 ha bei einer Länge von ca. 6,0 km", besonderheitenTextView: "keine", gewaesserInfo: "Der Verein wurde 1994 Pächter dieses Gewässers. Der Pachtvertrag resultiert aus dem Tausch Bidlingmeyer (Teil des Landeshafen) gegen Altrhein. Der Hauptwasserzufluß wird in Abhängigkeit vom Rheinwasserstand geregelt. (Pegel Maxau 3,60 bis 4,38m offen) Da dieses Niveau sehr selten erreicht wird, hat der Altrhein Stillwassercharakter, was sich nicht optimal auf das Gewässer auswirkt. Nachteilig sind die Zuflüsse Oberflächenwasser der BAB Wanne und Automobilwerk, dass Hebewerk I und der Weidengraben.", gewaesserKartePic: UIImage(named: "AltrheinKarte")!)]
    
    
    let rathjens = [
        "Rathjens"]
    
    var rathjensgewaesser = [
        Gewaesser(gewaesserPic: UIImage(named: "Rathjens1")!, gewaesserName: "Rathjens/Kiefer", lageTextViews: "Er liegt ca. 300 Meter östlich von Wörth. Dieses Gewässer ist nördlich und östlich eingebettet in die Rheinanlagen. Im Süden bildet das Automobilwerk und im Westen die B9 die Grenze.", gewaesserGroesseTextView: " ca. 36,7 ha", besonderheitenTextView: "keine", gewaesserInfo: "Der Rathjens ist seit 1949 gepachtet. Nachdem 1959 die Kiesgrube Kiefer mit unserem Vereinsgewässer Rathjens durch Ausbaggerung in Verbindung stand, konnte auch dieses Gewässer gepachtet werden. Der Pachtvertrag für den Kiefer wurde 1969 unter erheblich schlechteren finanziellen Bedingungen verlängert. Verpächter sind das Land Rheinland-Pfalz und die Automobilfirma. Die Kiesgewinnung wurde im Sommer 1995 eingestellt. Anschließend erfolgten umfangreiche Rekultivierungsmaßnahmen. Dieses Gewässer ist ein so genannter gealterter Baggersee mit gutem Unterwasserbewuchs und fruchtbarem, nährstoffreichem Wasser. Durch die überwiegend steil abfallenden Uferböschungen und minimal vorhandenen Flachwasserzonen besitzt dieses Gewässer sehr schlechte Laichmöglichkeiten. Es sind daher Besatzmaßnahmen nötig, die sich nach den Fangnachweisen der Mitglieder richten. Durch das Einstellen der Kiesförderung und der dadurch eingetretenen Ruhe ist es ein attraktives Gewässer.", gewaesserKartePic: UIImage(named: "Kiefer:Rathjens")!)]
    
    
    let ritterhecke = [
        "Ritterhecke"]
    
    var ritterheckegewaesser = [
        Gewaesser(gewaesserPic: UIImage(named: "Ritterhecke1")!, gewaesserName: "Hafen-Ritterhecke", lageTextViews: " Es liegt etwa 5 Kilometer nordöstlich von Wörth entfernt. Eingebetet zwischen den Betrieben entlang des Hafens und dem Rheinstrom ist es zu finden.", gewaesserGroesseTextView: "ca. 32 ha", besonderheitenTextView: "2019 wurde die von der Fa. Contargo forcierte Sperrung der Hafenstraße gerichtlich genehmigt und umgesetzt. Die Zufahrt zum Vereinsgewässer Ritterhecke ist derzeit nur über Maximiliansau möglich.", gewaesserInfo: "Im Jahr 1924 konnte als Vereinsgewässer die Kiesgrube Bidlingmeyer auch Ritterhecke genannt vom Verein als eines der ersten Gewässer gepachtet werden. In Eigenarbeit erstellte der Verein 1932 in der Gewann Ritterhecke eine Vereinshütte. Sie sollte den Mitgliedern als Unterstellplatz und zur Geräteaufbewahrung dienen. Durch Zusammenlegung der Gewässer Ritterhecke, Stumpenbau Teile des Altreheines und der Kiesförderung entstand der Landeshafen. Auf dieser Wasserfläche fanden die Deutschen Meisterschaften (1988) und World Games (1989) im Wasserski statt. Zum 1.1.94 wurde das Gewässer Ritterhecke gegen den Wörther Altrhein mit der Bezirksregierung getauscht. Ab 2003 durften es die Mitglieder des SFV wieder befischen.Die Kiesunternehmen Reiser & Mall, König und Kiefer schufen durch ihre Auskiesung ein idyllisches Gewässer.", gewaesserKartePic: UIImage(named: "RitterheckeKarte")!)]
    
    
    let altwasser = [
        "Altwasser"]
    
    var altwassergewaesser = [
        Gewaesser(gewaesserPic: UIImage(named: "Altwasser1")!, gewaesserName: "Altwasser", lageTextViews: "Altwasser (südlicher Teil): Es beginnt am Ende des alten Ortsteil an der Schließe Friedrichstr. und endet am Durchlass Hafenstraße/B9 Altwasser nördlicher Teil: Es liegt etwa 2 km nordöstlich von Wörth, beginnt am Durchlass unter der Hafenstraße/B9 und endet am Hebewerk beim Scherpfer Häusl am Damm zum Staatshafen.", gewaesserGroesseTextView: "Altwasser (südlicher Teil): ca. 7,5 ha, Länge ca. 2,4 km Altwasser (nördlicher Teil): ca. 22,2 ha, Länge ca. 3,2 km", besonderheitenTextView: "Im Jahr 2012 wurde im nördlichen Teil der Bereich zwischen der B9 und ca. 100 m nach der Krötenschranke zum Schongebiet erklärt (rot gekennzeichnete Uferlinie in der Gewässerübersicht). In diesem Bereich besteht ein ganzjähriges Angelverbot.Bei dem in der Gewässerübersicht (Nördlicher Teil) hellblau eingefärbten Bereich handelt es sich um den Pachtbereich des ASV Jockgrim, dieser darf von SFV-Mitgliedern nicht befischt werden!", gewaesserInfo: "Das Altwasser hat der Verein seit 1982 von der Stadt Wörth gepachtet. Vor dieser Zeit konnte man, von diesem naturnahen Gewässer, Karten bei der Stadt erwerben. Der südliche Teil wird von der Kleingartenanlage begleitet. Nördlich davon entlang des Westufers erstreckt sich ein Schilfgürtel, während das Ostufer von Erlenwald gesäumt wird. Der Nordbereich wird geprägt durch einen breiten Schilfgürtel. Eine Befischung erfolgt meistens vom Ostufer.Der Nördliche Teil wird von einem breiten Schilfgürtel geprägt, welcher sich immer weiter zurückbildet. Besonderes Merkmal seine Angelstege mit ihren Häuschen. Zufluss erhält es vom Altrhein (Schließe Friedrichstr.), dem Heilbach, dem Erlenbruch (Rotaug-, Füllegraben) und dem Schmerbach (Gumber-Graben). Das Gewässer ist sehr nährstoffreich, mit Pflanzenvielfalt bietet es ideale Bedingungen zum Ablaichen. Leider wird oft während der Laichzeit der Wasserspiegel stark abgesenkt. Als Folge vertrocknet der kostbare Fischlaich und die Larven verenden. Der Untergrund ist sehr schlammig. Im Jahr 1998 wurde eine Probeentschlammung in Höhe des Jockgrimer Loch durchgeführt. Sie sollte der Vorbote einer kompletten Entschlammung sein. Aus welchen Gründen auch immer, wurde diese Maßnahme zunächst eingestellt. Erst im Jahr 2011/2012 nach Klärung der Frage der Schlammentsorgung wurde die Entschlammung des gesamten Bereiches abgeschlossen. Dieses Gewässer ist trotz aller Probleme eines unserer schönsten, da hier eine große Artenvielfalt von Pflanzen und Tieren anzutreffen ist.", gewaesserKartePic: UIImage(named: "AltrheinKarteJockgrim")!)]
    
    
    let hörnel = [
        "Hörnel-Altrhein"]
    
    var hörnelgewaesser = [
        Gewaesser(gewaesserPic: UIImage(named: "Hörnel1")!, gewaesserName: "Hörnel-Altrhein", lageTextViews: "Das Gewässer liegt etwa 6 km nordöstlich von Wörth entfernt.", gewaesserGroesseTextView: "ca. 8,4 ha, Länge ca. 5,3 km", besonderheitenTextView: "keine", gewaesserInfo: "Durch Verzicht des Netzfischers Kuhn konnte zum 1.4.1969 der Hörnel-Altrhein vom Verein gepachtet werden. Ein beliebtes und sehr idyllisch gelegenes Gewässer im Wörther Gemeindewald. Der Pachtvertrag wurde mit der Stadt Wörth geschlossen. Er wird über eine Schließe vom Wasser des Landeshafen Wörth gespeist und läuft in Windungen parallel zum Rheinstrom, wo er nach ca. 5,3 km in diesen mündet. Da der Zufluss über Jahre hinweg verlandete wurde 1999 auf Anregung des SFV von der Stadt die Verbindung zwischen Hafen und Hörnel durch ein neues Grabensystem wieder hergestellt. Da dieses Gewässer dem Hochwasserschutzdeich vorgelagert ist, wird es fast jährlich ein-, zweimal vom Rheinstrom überflutet. Es erfolgt somit ein kräftiger und natürlicher Wasseraustausch. Der Wasserspiegel wird vom Pegelstand des Rheinstromes bestimmt. Da der größte Teil des Hörnel nicht direkt mit dem Auto erreichbar ist, wird der mittlere und hintere Bereiche nur sehr spärlich befischt. Erschwert wird die Fischerei durch die vielen Bäume und Äste, die sich im Gewässer befinden. Dies hat aber auch Vorteile. Große Raubfische, Karpfen sowie die Fischbrut findet hier ihren Unterschlupf und Schutz. Hier kann man einen ruhigen Angeltag fernab von jedem Autolärm genießen. Der Hörnel-Altrhein ist durch seine Lage ein uriges, natürliches und romantisches Gewässer.", gewaesserKartePic: UIImage(named: "HörnelAltrhein")!)]
    
    
    var selectedGewaesser: Gewaesser!
    
   
    @IBOutlet var gewaesserView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gewaesserView.dataSource = self
        gewaesserView.delegate = self
        
        navigationItem.title = "Gewässer"
        

    }
   
    
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let destinationViewController = segue.destination as? GewaesserAnsichtViewController
            
            destinationViewController?.gewaesser = selectedGewaesser!
        }
        
        override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            selectedGewaesser = gewaesserwelt[indexPath.row]
            
            switch indexPath.section{
            case 0: selectedGewaesser = gewaesserwelt[indexPath.row]
            case 1: selectedGewaesser = gemeindelochgewaesser[indexPath.row]
            case 2: selectedGewaesser = altrheingewaesser[indexPath.row]
            case 3: selectedGewaesser = rathjensgewaesser[indexPath.row]
            case 4: selectedGewaesser = ritterheckegewaesser[indexPath.row]
            case 5: selectedGewaesser = altwassergewaesser[indexPath.row]
            case 6: selectedGewaesser = hörnelgewaesser[indexPath.row]
            default: break
            }
            
            performSegue(withIdentifier: "showGewaesser", sender: self)
            
            
            
            
            
        }
        
        // MARK: - Table view data source
        
        override func numberOfSections(in tableView: UITableView) -> Int {
            // #warning Incomplete implementation, return the number of sections
            return 7
        }
        
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            
            switch section{
            case 0: return gewaesserwelt.count
            case 1: return gemeindelochgewaesser.count
            case 2: return altrheingewaesser.count
            case 3: return rathjensgewaesser.count
            case 4: return ritterheckegewaesser.count
            case 5: return altwassergewaesser.count
            case 6: return hörnelgewaesser.count
            default:
                return 0
//            return gewaesser_array.count
            }
        }
        
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let gewaesserCell = tableView.dequeueReusableCell(withIdentifier:"GewaesserCell", for: indexPath)
            
            
            
            var gewaesserNamen: String
            var gewaesserBild: UIImage
            switch indexPath.section{
                
            case 0:
                gewaesserNamen = gewaesserwelt[indexPath.row].gewaesserName
                gewaesserBild = gewaesserwelt[indexPath.row].gewaesserPic
            case 1:
                gewaesserNamen = gemeindelochgewaesser[indexPath.row].gewaesserName
                gewaesserBild = gemeindelochgewaesser[indexPath.row].gewaesserPic
            case 2:
                gewaesserNamen = altrheingewaesser[indexPath.row].gewaesserName
                gewaesserBild = altrheingewaesser[indexPath.row].gewaesserPic
            case 3:
                gewaesserNamen = rathjensgewaesser[indexPath.row].gewaesserName
                gewaesserBild = rathjensgewaesser[indexPath.row].gewaesserPic
            case 4:
                gewaesserNamen = ritterheckegewaesser[indexPath.row].gewaesserName
                gewaesserBild = ritterheckegewaesser[indexPath.row].gewaesserPic
            case 5:
                gewaesserNamen = altwassergewaesser[indexPath.row].gewaesserName
                gewaesserBild = altwassergewaesser[indexPath.row].gewaesserPic
            case 6:
                gewaesserNamen = hörnelgewaesser[indexPath.row].gewaesserName
                gewaesserBild = hörnelgewaesser[indexPath.row].gewaesserPic
            default:
                gewaesserBild = UIImage(named: "Altwasser")!
                gewaesserNamen = ""
            }
            
            var content = gewaesserCell.defaultContentConfiguration()
            content.text = gewaesserNamen
            content.image = gewaesserBild
            gewaesserCell.contentConfiguration = content
            
            return gewaesserCell
            
        }
        override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            
            
            let button = UIButton()
        
            button.setTitleColor(.cyan, for: .normal)
            
            switch section{
            case 0:
                return "Schauffele"
            case 1:
                return "Gemeindeloch"
            case 2:
                return "Altrhein"
            case 3:
                return "Rathjens"
            case 4:
                return "Ritterhecke"
            case 5:
                return "Altwasser"
            case 6:
                return "Hörnel"
                
            default:
                return nil
            }
        }
        
    }



