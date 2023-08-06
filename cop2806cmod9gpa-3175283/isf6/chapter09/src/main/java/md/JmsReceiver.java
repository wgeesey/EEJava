package md;

import org.springframework.jms.annotation.JmsListener;
import org.springframework.stereotype.Component;

@Component
public class JmsReceiver {
  DocumentRepository dao;

  JmsReceiver(DocumentRepository dao) {
    this.dao = dao;
  }

  @JmsListener(destination = "cop2806c")
  public void receiveMessage(Document document) {
    System.out.println("Received <" + document + ">");
    this.dao.save(document);
  }
}
