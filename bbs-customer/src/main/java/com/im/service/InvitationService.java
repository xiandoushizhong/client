package com.im.service;

import java.util.List;

import com.im.pojo.Invitation;

/**
 * @author Johnny
 * @category 业务逻辑
 */
public interface InvitationService {

	public List<Invitation> find();
	
	public Invitation find(int id);

	public boolean insert(Invitation invitation);

	public boolean delete(int[] ids);

	public boolean update(Invitation invitation);
}
