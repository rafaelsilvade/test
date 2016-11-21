
public class ContatoDao extends Contato{
	
public void salvar(Contato contato) {		
		EntityManager Ent = JPAUtil.getEntityManager();		
		
		EntityTransaction tx = Ent.getTransaction();
		
		tx.begin();
		Ent.persist(contato);
		tx.commit();		
		Ent.close();
	}

}
