package dao;

import org.hibernate.Session;

import com.utils.HibernateUtils;

import java.util.List;

import javax.persistence.Query;

import entity.Video;

public class VideoDAO {
	private Session hSession;

	public VideoDAO() {
		this.hSession = HibernateUtils.getSession();
	}

	public Video insert(Video entity) {
		this.hSession.beginTransaction();
		this.hSession.save(entity);
		this.hSession.getTransaction().commit();
		return entity;
	}

	public List<Video> getAll() {
		String hql = "FROM Video";
		Query query = this.hSession.createQuery(hql);
		List<Video> listVideo = query.getResultList();

		return listVideo;
	}
	
	public List<Video> getAll(int offset, int limit) {
		String hql = "FROM Video";
		Query query = this.hSession.createQuery(hql);
		query.setFirstResult(offset);
		query.setMaxResults(offset + limit);
		List<Video> listVideo = query.getResultList();

		return listVideo;
	}

	public Video findById(int id) {
		Video entity = this.hSession.get(Video.class, id);
		return entity;
	}

	public void update(Video entity) {
		try {
			this.hSession.clear();
			this.hSession.beginTransaction();
			this.hSession.update(entity);
			this.hSession.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			this.hSession.getTransaction().rollback();
		}
	}

	public void delete(Video entity) {
		try {
			this.hSession.clear();
			this.hSession.beginTransaction();
			this.hSession.delete(entity);
			this.hSession.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			this.hSession.getTransaction().rollback();
		}
	}
}
