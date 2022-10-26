//
//  NoteTableViewCell.swift
//  CoreDataCRUDTest
//
//  Created by Dmitry Aksyonov on 19.06.2022.
//

import UIKit
import SnapKit

// MARK: - NoteTableViewCell

final class NoteTableViewCell: UITableViewCell {

	// MARK: Properties

	private lazy var containerView: UIView = {
		let view = UIView()
		view.translatesAutoresizingMaskIntoConstraints = false
		view.layer.cornerRadius = Constants.cornerRadius
		view.backgroundColor = .purple
		return view
	}()

	private lazy var titleLabel: UILabel = {
		let label = UILabel()
		label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .header
		return label
	}()

	private lazy var bodyLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .footer
        return label
    }()

	// MARK: Initialization

	override init(
		style: UITableViewCell.CellStyle,
		reuseIdentifier: String?
	) {
		super.init(style: style, reuseIdentifier: reuseIdentifier)

		addSubviews()
		constrainSubviews()
		setUIDetails()
	}

	@available(*, unavailable)
	required init?(coder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

	// MARK: Methods

    func render(with model: NotesListViewModel.Cell) {
		titleLabel.text = model.title
		bodyLabel.text = model.body
        containerView.backgroundColor = model.backgroundColor
	}

	private func addSubviews() {
		contentView.addSubview(containerView)

		[titleLabel, bodyLabel].forEach {
			$0.translatesAutoresizingMaskIntoConstraints = false
			containerView.addSubview($0)
		}
	}

	private func constrainSubviews() {
		containerView.snp.makeConstraints {
			$0.center.equalToSuperview()
			$0.width.equalToSuperview().inset(10)
			$0.height.equalTo(Constants.containerHeight)
		}
		titleLabel.snp.makeConstraints {
			$0.height.equalTo(38)
			$0.top.equalToSuperview().inset(25)
			$0.left.equalToSuperview().inset(35)
			$0.right.equalToSuperview().inset(35)
		}
		bodyLabel.snp.makeConstraints {
			$0.top.equalTo(titleLabel.snp.bottom).offset(10)
			$0.left.equalToSuperview().inset(35)
			$0.right.equalToSuperview().inset(35)
		}
	}

	private func setUIDetails() {
		self.contentView.layer.cornerRadius = Constants.cornerRadius
	}
}

// MARK: - Constants

extension NoteTableViewCell {

	private enum Constants {
		static let cornerRadius: CGFloat = 50
		static let containerHeight: CGFloat = 150
	}
}
